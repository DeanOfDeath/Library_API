# Library API

A RESTful API built with PHP and Slim Framework, providing secure access to a library’s book and author catalog. It supports user authentication with JSON Web Tokens (JWT), allowing CRUD operations on books and authors, and managing book borrowing and returning.

## Features

- **Secure Authentication**: Each request requires a JWT for authorization.
- **User Management**: Register and authenticate users with secure tokens.
- **Author Management**: Create, read, update, and delete authors.
- **Book Management**: Create, read, update, and delete books.
- **Borrowing System**: Borrow and return books, tracking borrowing status.
- **Book-Author Relations**: Manage associations between books and authors.

---

## Endpoints

### 1. User Registration
Registers a new user.

- **Endpoint**: `/user/register`
- **Method**: `POST`
- **Request Body**:
    ```json
    {
      "username": "new_user",
      "password": "user_password"
    }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
       "access_token": null,
      "data": null }
      ```
    - **Fail**:
      ```json
      { "status": "fail",
      "data": { "title": "Username already taken" } }
      ```

### 2. User Authentication
Authenticates an existing user and returns a JWT.

- **Endpoint**: `/user/auth`
- **Method**: `POST`
- **Request Body**:
    ```json
    {
      "username": "existing_user",
      "password": "user_password"
    }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
      "data": null }
      ```
    - **Fail**:
      ```json
      { "status": "fail",
      "data": { "title": "Authentication Failed" } }
      ```

---

## Author Management

### 3. Create Author
Adds a new author.

- **Endpoint**: `/authors`
- **Method**: `POST`
- **Request Body**:
    ```json
    {
      "name": "Author Name",
      "token": "valid_jwt_token"
    }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
       "data": null }
      ```
    - **Fail**:
      ```json
      { "status": "fail",
      "data": { "title": "Invalid Token" } }
      ```

### 4. Get All Authors
Retrieves a list of all authors.

- **Endpoint**: `/authors/get`
- **Method**: `GET`
- **Request Body**:
    ```json
    { "token": "valid_jwt_token" }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
      "data": [ /* authors list */ ] }
      ```

### 5. Update Author
Updates an author’s details.

- **Endpoint**: `/authors/update/{id}`
- **Method**: `PUT`
- **Request Body**:
    ```json
    {
      "name": "Updated Author Name",
      "token": "valid_jwt_token"
    }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
       "access_token": "new_jwt_token",
      "data": null }
      ```

### 6. Delete Author
Deletes an author.

- **Endpoint**: `/authors/delete/{id}`
- **Method**: `DELETE`
- **Request Body**:
    ```json
    { "token": "valid_jwt_token" }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
       "data": null }
      ```

---

## Book Management

### 7. Create Book
Adds a new book.

- **Endpoint**: `/books`
- **Method**: `POST`
- **Request Body**:
    ```json
    {
      "title": "Book Title",
      "author_id": 1,
      "token": "valid_jwt_token"
    }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
       "data": null }
      ```

### 8. Get All Books
Retrieves a list of all books.

- **Endpoint**: `/books/get`
- **Method**: `GET`
- **Request Body**:
    ```json
    { "token": "valid_jwt_token" }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
      "data": [ /* books list */ ] }
      ```

### 9. Update Book
Updates a book’s details.

- **Endpoint**: `/books/update/{id}`
- **Method**: `PUT`
- **Request Body**:
    ```json
    {
      "title": "Updated Book Title",
      "author_id": 1,
      "token": "valid_jwt_token"
    }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
      "data": null }
      ```

### 10. Delete Book
Deletes a book.

- **Endpoint**: `/books/delete/{id}`
- **Method**: `DELETE`
- **Request Body**:
    ```json
    { "token": "valid_jwt_token" }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
       "data": null }
      ```
### 11. Get Books by Author ID
Retrieves all books associated with a specific author by their ID.

- **Endpoint**: `/books/get_by_author`
- **Method**: `POST`
- **Request Body**:
    ```json
    {
      "author_id": 1,
      "token": "valid_jwt_token"
    }
    ```
- **Response**:
    - **Success**:
      ```json
      {
        "status": "success",
        "access_token": "new_jwt_token",
        "data": [ /* list of books */ ]
      }
      ```
    - **Fail (Missing Author ID)**:
      ```json
      {
        "status": "fail",
        "access_token": null,
        "message": "author_id is required"
      }
      ```
    - **Fail (Database Error)**:
      ```json
      {
        "status": "fail",
        "access_token": null,
        "data": {
          "title": "Error Message from Database"
        }
      }
      ```

---

## Borrowing and Returning Books

### 12. Borrow a Book
Borrows a book for a user.

- **Endpoint**: `/borrow`
- **Method**: `POST`
- **Request Body**:
    ```json
    {
      "borrower_name": "John Doe",
      "book_id": 1,
      "borrow_date": "2024-10-15",
      "due_date": "2024-11-15",
      "token": "valid_jwt_token"
    }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
      "message": "Book borrowed successfully" }
      ```
    - **Fail**:
      ```json
      { "status": "fail",
       "access_token": "new_jwt_token",
      "message": "Book is currently unavailable" }
      ```

### 13. Return a Book
Returns a borrowed book.

- **Endpoint**: `/return`
- **Method**: `POST`
- **Request Body**:
    ```json
    {
      "book_id": 1,
      "borrower_name": "John Doe",
      "return_date": "2024-11-01",
      "token": "valid_jwt_token"
    }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
       "access_token": "new_jwt_token",
      "message": "Book returned successfully" }
      ```
    - **Fail**:
      ```json
      { "status": "fail",
       "access_token": "new_jwt_token",
       "message": "No active borrowing record found for this book and borrower" }
      ```

### 14. List All Currently Borrowed Books
Retrieves a list of all currently borrowed books.

- **Endpoint**: `/books/borrowed`
- **Method**: `GET`
- **Request Body**:
    ```json
    { "token": "valid_jwt_token" }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
      "data": [ /* borrowed books list */ ] }
      ```

---

## Book-Author Relations

### 15. Create Book-Author Relation
Associates a book with an author.

- **Endpoint**: `/books_authors`
- **Method**: `POST`
- **Request Body**:
    ```json
    {
      "book_id": 1,
      "author_id": 2,
      "token": "valid_jwt_token"
    }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
      "data": null }
      ```

### 16. Get All Book-Author Relations
Retrieves all book-author relations.

- **Endpoint**: `/books_authors/get`
- **Method**: `GET`
- **Request Body**:
    ```json
    { "token": "valid_jwt_token" }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
      "data": [ /* relations list */ ] }
      ```

### 17. Delete Book-Author Relation
Deletes a book-author relation by ID.

- **Endpoint**: `/books_authors/delete/{id}`
- **Method**: `DELETE`
- **Request Body**:
    ```json
    { "token": "valid_jwt_token" }
    ```
- **Response**:
    - **Success**:
      ```json
      { "status": "success",
      "access_token": "new_jwt_token",
       "data": null }
      ```

---
## Database Structure

The Library System API uses a MySQL database to manage users, books, authors, book borrowing transactions, and book-author relations. Below is a summary of each table’s purpose and structure:

### Tables

1. **users**
   - **Purpose**: Stores information about registered users who can access the API.
   - **Fields**:
     - `userid` (int, Primary Key): Unique identifier for each user.
     - `username` (char): Username of the user.
     - `password` (text): Hashed password for user authentication.

2. **authors**
   - **Purpose**: Contains information about authors available in the library system.
   - **Fields**:
     - `authorid` (int, Primary Key): Unique identifier for each author.
     - `name` (char): Name of the author.

3. **books**
   - **Purpose**: Stores details about books available in the library.
   - **Fields**:
     - `bookid` (int, Primary Key): Unique identifier for each book.
     - `title` (char): Title of the book.
     - `authorid` (int): Foreign key referencing the `authorid` in the `authors` table.
     - `is_borrowed` (tinyint, nullable): Indicates if the book is currently borrowed (1 for yes, 0 for no).

4. **books_authors**
   - **Purpose**: Manages many-to-many relationships between books and authors, allowing books to be associated with multiple authors.
   - **Fields**:
     - `collectionid` (int, Primary Key): Unique identifier for each book-author relationship.
     - `bookid` (int): Foreign key referencing the `bookid` in the `books` table.
     - `authorid` (int): Foreign key referencing the `authorid` in the `authors` table.

5. **borrowed_books**
   - **Purpose**: Tracks borrowing transactions, including which books are borrowed by which users and when they are due.
   - **Fields**:
     - `id` (int, Primary Key): Unique identifier for each borrowing transaction.
     - `user_id` (int, nullable): Foreign key referencing the `userid` in the `users` table, identifying the borrower.
     - `book_id` (int): Foreign key referencing the `bookid` in the `books` table.
     - `borrower_name` (varchar): Name of the borrower.
     - `borrow_date` (date): Date when the book was borrowed.
     - `due_date` (date): Due date for returning the book.
     - `return_date` (date, nullable): Date when the book was returned (if applicable).

6. **jwt_tokens**
   - **Purpose**: Stores JWT tokens issued to users, tracking their validity and usage status.
   - **Fields**:
     - `id` (int, Primary Key): Unique identifier for each token record.
     - `token` (text): The actual JWT token string.
     - `iat` (int): Issued-at timestamp.
     - `exp` (int): Expiration timestamp.
     - `type` (enum: `access`, `refresh`): Indicates whether the token is an access or refresh token.
     - `used` (tinyint, nullable): Marks if the token has been used (1 for used, 0 for not used).
     - `created_at` (datetime, nullable): Timestamp when the token was created.
