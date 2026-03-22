import { createServer, type Config } from "./server"

interface User {
  id: number
  name: string
  role: "admin" | "viewer"
  active: boolean
}

// Fetch active users with optional search filter
async function getUsers(config: Config, query?: string): Promise<User[]> {
  const { baseUrl, timeout = 3000 } = config
  const endpoint = `${baseUrl}/api/users?limit=50`

  const response = await fetch(endpoint, {
    headers: { "Content-Type": "application/json" },
    signal: AbortSignal.timeout(timeout),
  })

  if (!response.ok) {
    throw new Error(`Request failed: ${response.status}`)
  }

  const users: User[] = await response.json()

  return users.filter((user) => {
    const matchesQuery = !query || user.name.toLowerCase().includes(query)
    return user.active && matchesQuery
  })
}

export const server = createServer({
  port: 8080,
  debug: process.env.NODE_ENV !== "production",
  onReady: () => console.log("Listening on :8080"),
})
