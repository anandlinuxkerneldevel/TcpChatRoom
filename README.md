

# TCP/IP Chat Application



## introduction


Web based chat applications is one of the more commonly used tool for effective two-way communication. It was originally started off as IRC based chat-rooms which has eventually emerged as multiple formats like Google Meet, WhatsApp, Skype etc. As time passed, these chat applications also started supporting various data types like plain text, images, videos and offering advanced functionalities like recording. Internally these applications use TCP/IP based client-server mechanism designed in large scale to handle multiple users. The idea of this project is to implement a chat room with minimal functionality using TCP/IP based sockets in a Linux based LAN environment.

For this Linux Internals Projects for Beginners project a concurrent server application should start first and start running in a particular machine. Client Application can be initiated from any of the machines in the same LAN, which automatically connect with the server. Before allowing a client / user into the chat room, it will perform authentication by validating username and password. There are many ways to implement this in Linux, however a simple text based user-name and password database is stored against which the incoming request is authenticated.

After successful authentication the client / user is allowed into the given chat room. After entering the user should be able to send messages to all the users in the group and read the messages in the room. Finally, the client can exit the chat room by giving a specific command. By implementing this project in a LAN environment participants will get a hands-on perspectives in TCP/IP Socket programming, Data-base handling, Authentication etc. Detailed requirements are provided below.




## Requirements Details

Here is the list of requirements that need to be implemented in this project. In this project implementation, there are two major players that is server and client. Along with that UI requirements also plays an important role in this project. All requirements are provided as follows.


1) Server Requirements:
- The server creates a TCP socket by binding itself to port 6333
- It should be a concurrent server allowing individual clients to establish new connections
- Server should provide client with a user-name & password upon successful connection
- Registered users are stored in a file by the server as a database
- Server should allow a registered user to login the service
- When incorrect user credentials are sent, the server should deny the service 
- When an authorized user is connected, server should send back list of on-line users
- When a user joins or leaves, the server should notify this event to other online users
- Client should send a logout, upon which their entry will get deleted from database
- When the client is connected, all messages sent from all clients should be sent to all. This will provide them with a chat-room experience, similar to a WhatsApp group

2) Client Requirements:
- Allow the user to register on the server
- Allow the user to login to the service
- Allow the user to display current on-line users
- Allow the user to logout from the service

3) User Interface Requirements:
- Server will run in background with no user-interface. Following are the UI requirements. 
  - Login / register interface.
  - Authentication by username and password.
  - Chat options (single chat / group chat / logout).
  - Print all on-line users after login.
  - New user alert.
  - Print status when user goes offline.
  - Error handling.
