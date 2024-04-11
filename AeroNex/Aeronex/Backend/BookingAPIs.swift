import Foundation
import Supabase

final class bookingModel: ObservableObject{
    
    @Published var responseStatus = 404
    @Published var responseMessage = "Something went wrong"
    
    @Published var hasActiveBookings = false
    @Published var activeBookings = [getBookings]()
    
    @Published var hasBookings = false
    @Published var Bookings = [getBookings]()
    
    @Published var currentBookingInfo = [getBookings]()
    @Published var pilotInfo = [getPilots]()
    
    let supabase = SupabaseClient(supabaseURL: Secrets.projectURL!, supabaseKey: Secrets.apiKey)
    
    func getBooking(userId:Int) async throws{
        let Bookings: [getBookings] = try await supabase.database
            .from(Tabel.Bookings)
            .select()
            .eq("userId", value: userId)
            .order("id", ascending: true)
            .execute()
            .value
        DispatchQueue.main.sync {
            
            if(Bookings.isEmpty){
                self.hasBookings = false
                self.responseStatus = 201
                self.responseMessage = "No booking found"
            }
            else{
                self.hasBookings = true
                self.responseStatus = 200
                self.responseMessage = "Bookings found"
            }
            self.Bookings = Bookings
        }
    }
    
    func getActiveBookings(userId:Int) async throws{
        let Bookings: [getBookings] = try await supabase.database
            .from(Tabel.Bookings)
            .select()
            .eq("userId", value: userId)
            .neq("status", value: "completed")
            .neq("status", value: "cancelled")
            .order("endTime", ascending: true)
            .execute()
            .value
        DispatchQueue.main.sync {
            
            if(Bookings.isEmpty){
                self.hasActiveBookings = false
                self.responseStatus = 201
                self.responseMessage = "No active bookings found"
            }
            else{
                self.hasActiveBookings = true
                self.responseStatus = 200
                self.responseMessage = "Active booking found"
            }
            self.activeBookings = Bookings
        }
    }
    
    func addBooking(userId: Int,address: String,lattitude: String,longitude: String, date: Date, time:Date, notes: String, price: String, clientName: String,clientId: String, status: String,pilotId: Int,pilotName: String) async throws{
        print("Called")
        //var randomInt = Int.random(in: 111111..<999999)
        
        let newBooking = addBookings(userId: userId, address: address, lattitude: lattitude, longitude: longitude, notes: notes, date: date, time: time, price: price, clientName: clientName, clientId: clientId, status: "invited", pilotId: pilotId, pilotName: pilotName)
        print("Created")
        print(newBooking)
        let response = try await supabase.database
            .from(Tabel.Bookings)
            .insert(newBooking)
            .execute()
        print(response.data)
        print(response.response)
        print("Done")
        self.responseStatus = 200
        self.responseMessage = "Booking scheduled successfully"
        
    }
    
    func cancelBooking(bookingID: Int) async throws{
        try await supabase.database
            .from(Tabel.Bookings)
            .update(["status":"cancelled"])
            .eq("id", value: bookingID)
            .execute()
        self.responseStatus = 200
        self.responseMessage = "Booking canclled"
    }
    
    func getCurrentBookings(bookingId: Int) async throws{
        
        //self.currentPickupInfo = []
        
        let Bookings: [getBookings] = try await supabase.database
            .from(Tabel.Bookings)
            .select()
            .eq("id", value: bookingId)
            .order("date", ascending: true)
            .execute()
            .value
        DispatchQueue.main.sync {
            
            if(Bookings.isEmpty){
                self.hasActiveBookings = false
                self.responseStatus = 201
                self.responseMessage = "No active bookings found"
            }
            else{
                self.hasActiveBookings = true
                self.responseStatus = 200
                self.responseMessage = "Active bookings found"
            }
            self.currentBookingInfo = Bookings
        }
    }
    
    func completeBooking(bookingId: Int) async throws{
        try await supabase.database
            .from(Tabel.Bookings)
            .update(["status":"completed"])
            .eq("id", value: bookingId)
            .execute()
        self.responseStatus = 200
        self.responseMessage = "Booking completed"
    }
    
    func getPilotDetails(pilotId: Int) async throws{
        
        let Pilots: [getPilots] = try await supabase.database
            .from(Tabel.Pilots)
            .select()
            .eq("id", value: pilotId)
            .order("fullName",ascending: false)
            .execute()
            .value
        DispatchQueue.main.async {
            
            self.responseStatus = 200
            self.responseMessage = "Found user"
            self.pilotInfo = Pilots
        }
        
    }
    
    func updateBooking(bookingId: Int, date: Date, time: Date) async throws{
        try await supabase.database
            .from(Tabel.Bookings)
            .update(["date":date])
            .eq("id", value: bookingId)
            .execute()
        try await supabase.database
            .from(Tabel.Bookings)
            .update(["time": time])
            .eq("id", value: bookingId)
            .execute()
        self.responseStatus = 200
        self.responseMessage = "Done"
    }
    
}
