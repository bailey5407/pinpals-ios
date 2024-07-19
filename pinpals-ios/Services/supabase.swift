//
//  supabase.swift
//  pinpals-ios
//
//  Created by Noah Bailey on 7/17/24.
//

import Foundation
import Supabase

let supabase = SupabaseClient(supabaseURL:
    URL(string: "https://ouafcgqdmomfcxjefdgi.supabase.co")!,
    supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im91YWZjZ3FkbW9tZmN4amVmZGdpIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MTE3Nzc0MTIsImV4cCI6MjAyNzM1MzQxMn0.wmRQ6OXI4rAbJByjNCpaJrJ09wYOLXgAJkRdbsTT0jY")

let auth = supabase.auth

