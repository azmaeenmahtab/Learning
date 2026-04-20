# Filtering and Searching in Next.js

## Description
This note explains how filtering and searching are handled in **Client Components** vs **Server Components** in Next.js.

## Client Component Approach
In a Client Component, it works like a regular React flow:

- Track selected search/filter values in client state.
- Call APIs based on selected search items.

## Server Component Approach
In a Server Component setup, split the larger UI so only the interactive part becomes a Client Component.

- Keep the main page as a Server Component when possible.
- Move the filter/search input UI into a small Client Component (because hooks are needed there).
- Save input state and update URL query params.
- Navigate to the same route with updated params.

Common hooks used in this pattern:

- `useSearchParams`
- `usePathname`
- `useRouter`

For more details, refer to PH module 42.5 (second video).