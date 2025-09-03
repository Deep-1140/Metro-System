# Train Ticket Reservation System - Visual ER Diagram

## Database Schema Overview

```
┌─────────────────────────────────────────────────────────────────────────────────────┐
│                           TRAIN TICKET RESERVATION SYSTEM                         │
│                                   ER DIAGRAM                                      │
└─────────────────────────────────────────────────────────────────────────────────────┘

┌─────────────────┐    ┌──────────────────┐    ┌─────────────────┐
│     USERS       │    │  USER_PROFILES   │    │     TRAIN       │
├─────────────────┤    ├──────────────────┤    ├─────────────────┤
│ PK: user_id     │    │ PK: profile_id   │    │ PK: train_no    │
│ username        │    │ first_name       │    │ train_name      │
│ password        │    │ last_name        │    │ from_station    │
│ role            │    │ address          │    │ to_station      │
│ session_id      │    │ phone_number     │    │ seats_available │
│ FK: profile_id  │    │ image            │    │ fare            │
└─────────────────┘    └──────────────────┘    └─────────────────┘
         │                       │                       │
         │ 1:1                  │                       │
         └───────────────────────┘                       │
                                                         │
                                                         │ 1:M
                                                         │
         ┌─────────────────┐    ┌─────────────────┐     │
         │     TICKET      │    │   API_TICKET    │     │
         ├─────────────────┤    ├─────────────────┤     │
         │ PK: ticket_id   │    │ PK: ticket_id   │     │
         │ transaction_id  │    │ transaction_id  │     │
         │ ticket_status   │    │ ticket_status   │     │
         │ journey_date    │    │ journey_date    │     │
         │ seats_required  │    │ seats_required  │     │
         │ seat_type       │    │ seat_type       │     │
         │ amount          │    │ amount          │     │
         │ FK: train_no    │    │ FK: train_no    │     │
         │ FK: user_id     │    │                 │     │
         └─────────────────┘    └─────────────────┘     │
                   │                                      │
                   │ M:1                                 │
                   └──────────────────────────────────────┘
```

## Detailed Table Structures

### 1. USERS Table
```
┌─────────────────────────────────────────────────────────────────────────────────────┐
│                                    USERS                                          │
├─────────────────────────────────────────────────────────────────────────────────────┤
│ Column Name      │ Data Type        │ Constraints │ Description                    │
├─────────────────────────────────────────────────────────────────────────────────────┤
│ user_id          │ INT              │ PK, AI      │ Unique user identifier        │
│ username         │ VARCHAR(255)     │ NOT NULL    │ User's login username         │
│ password         │ VARCHAR(255)     │ NOT NULL    │ User's login password         │
│ role             │ ENUM             │ NOT NULL    │ ADMIN or CUSTOMER              │
│ session_id       │ VARCHAR(255)     │ NULL        │ Session identifier            │
│ profile_id       │ INT              │ FK          │ Reference to USER_PROFILES    │
└─────────────────────────────────────────────────────────────────────────────────────┘
```

### 2. USER_PROFILES Table
```
┌─────────────────────────────────────────────────────────────────────────────────────┐
│                                 USER_PROFILES                                     │
├─────────────────────────────────────────────────────────────────────────────────────┤
│ Column Name      │ Data Type        │ Constraints │ Description                    │
├─────────────────────────────────────────────────────────────────────────────────────┤
│ profile_id       │ INT              │ PK, AI      │ Unique profile identifier     │
│ first_name       │ VARCHAR(255)     │ NULL        │ User's first name             │
│ last_name        │ VARCHAR(255)     │ NULL        │ User's last name              │
│ address          │ VARCHAR(255)     │ NULL        │ User's address                │
│ phone_number     │ VARCHAR(255)     │ NULL        │ User's contact number         │
│ image            │ LONGBLOB         │ NULL        │ User's profile picture        │
└─────────────────────────────────────────────────────────────────────────────────────┘
```

### 3. TRAIN Table
```
┌─────────────────────────────────────────────────────────────────────────────────────┐
│                                    TRAIN                                          │
├─────────────────────────────────────────────────────────────────────────────────────┤
│ Column Name      │ Data Type        │ Constraints │ Description                    │
├─────────────────────────────────────────────────────────────────────────────────────┤
│ train_no         │ BIGINT           │ PK, AI      │ Unique train identifier       │
│ train_name       │ VARCHAR(255)     │ NULL        │ Name of the train             │
│ from_station     │ VARCHAR(255)     │ NULL        │ Starting station              │
│ to_station       │ VARCHAR(255)     │ NULL        │ Destination station           │
│ seats_available  │ INT              │ NULL        │ Number of available seats     │
│ fare             │ DOUBLE PRECISION │ NULL        │ Ticket fare amount            │
└─────────────────────────────────────────────────────────────────────────────────────┘
```

### 4. TICKET Table
```
┌─────────────────────────────────────────────────────────────────────────────────────┐
│                                   TICKET                                          │
├─────────────────────────────────────────────────────────────────────────────────────┤
│ Column Name      │ Data Type        │ Constraints │ Description                    │
├─────────────────────────────────────────────────────────────────────────────────────┤
│ ticket_id        │ VARCHAR(255)     │ PK          │ Unique ticket identifier      │
│ transaction_id   │ VARCHAR(255)     │ NULL        │ Payment transaction ID        │
│ ticket_status    │ ENUM             │ NULL        │ BOOKED/CANCELLED/PENDING/EXP  │
│ journey_date     │ DATE             │ NULL        │ Date of journey               │
│ seats_required   │ INT              │ NULL        │ Number of seats booked        │
│ seat_type        │ VARCHAR(255)     │ NULL        │ Type of seat (Sleeper/AC)     │
│ amount           │ DOUBLE PRECISION │ NULL        │ Ticket amount                 │
│ train_no         │ BIGINT           │ FK          │ Reference to TRAIN            │
│ user_id          │ INT              │ FK          │ Reference to USERS            │
└─────────────────────────────────────────────────────────────────────────────────────┘
```

### 5. API_TICKET Table
```
┌─────────────────────────────────────────────────────────────────────────────────────┐
│                                 API_TICKET                                        │
├─────────────────────────────────────────────────────────────────────────────────────┤
│ Column Name      │ Data Type        │ Constraints │ Description                    │
├─────────────────────────────────────────────────────────────────────────────────────┤
│ ticket_id        │ VARCHAR(255)     │ PK          │ Unique ticket identifier      │
│ transaction_id   │ VARCHAR(255)     │ NULL        │ Payment transaction ID        │
│ ticket_status    │ ENUM             │ NULL        │ BOOKED/CANCELLED/PENDING/EXP  │
│ journey_date     │ DATE             │ NULL        │ Date of journey               │
│ seats_required   │ INT              │ NULL        │ Number of seats booked        │
│ seat_type        │ VARCHAR(255)     │ NULL        │ Type of seat (Sleeper/AC)     │
│ amount           │ DOUBLE PRECISION │ NULL        │ Ticket amount                 │
│ train_no         │ BIGINT           │ FK          │ Reference to TRAIN            │
└─────────────────────────────────────────────────────────────────────────────────────┘
```

## Relationships Summary

| Relationship | Type | Description |
|--------------|------|-------------|
| USERS ↔ USER_PROFILES | 1:1 | Each user has exactly one profile |
| TRAIN ↔ TICKET | 1:M | One train can have many tickets |
| USERS ↔ TICKET | 1:M | One user can book many tickets |
| TRAIN ↔ API_TICKET | 1:M | One train can have many API tickets |

## Key Features

✅ **User Management**: Complete user registration and profile management  
✅ **Role-Based Access**: ADMIN and CUSTOMER roles with different permissions  
✅ **Train Management**: Comprehensive train information with seat tracking  
✅ **Dual Booking System**: Regular tickets (user-linked) and API tickets (external)  
✅ **Payment Integration**: Transaction tracking for all bookings  
✅ **Session Management**: User session tracking for security  
✅ **Status Tracking**: Complete ticket status lifecycle management  

## Data Flow

1. **User Registration** → Creates USERS and USER_PROFILES records
2. **Train Addition** → Admin adds TRAIN records
3. **Ticket Booking** → Creates TICKET or API_TICKET records
4. **Payment Processing** → Updates transaction_id and ticket_status
5. **Booking Management** → Users can view and manage their bookings 