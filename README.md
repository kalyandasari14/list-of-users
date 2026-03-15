# List of Users 👥

A SwiftUI app that fetches and displays a list of users
from a REST API with a clean detail view for each user.

## Features
- Browse a list of users fetched from a live API
- Tap any user to see their full profile
- Loading and error states on every screen
- Empty state handling
- Retry button on network failure

## Tech Stack
- SwiftUI
- async/await networking
- URLSession
- JSONDecoder with Decodable structs
- MVVM architecture
- Observable macro
- NavigationStack with navigationDestination

## Architecture
```
UserViewModel  → fetches all users
ContentView    → displays user list
DetailView     → displays full user profile
UserData       → Decodable model with nested Address and Company structs
```

## API
Built using the free JSONPlaceholder API:
```
GET https://jsonplaceholder.typicode.com/users
```
No API key required.

## Requirements
- iOS 17+
- Xcode 15+

## How to Run
1. Clone the repo
2. Open the `.xcodeproj` file in Xcode
3. Hit Run — no setup needed
```

---

Same steps to add it:
```
1. Open repo on GitHub
2. Add file → Create new file
3. Name it README.md
4. Paste → Commit
