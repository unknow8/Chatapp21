# How to run the code:
1. Install Rails: [Installing Ruby on Rails](https://gorails.com/setup/osx/10.14-mojave)
2. From the cmd or Ubuntu subsystem cmd, execute the following commands.
3. Clone the project: `git clone https://csil-git1.cs.surrey.sfu.ca/lht2/cmpt-276-project-chatapp21`
4. Move in the project directory: `cd cmpt-276-project-chatapp21`
5. Migrate the database: `rails db:migrate`
7. Install webpacker: `rails webpacker:install`
8. Run the server: `rails s`
9. Access the webapp on localhost:3000

# Demo for Iteration 1:
- [Demo of working features for iteration 1](https://youtu.be/FAXAeFcwV_Q) 
- [Demo of working features for iteration 2](https://youtu.be/1PqcAlPoILA) (features available on branch devise - current main development branch)

# Abstract: 
ChatApp21 is an online chat website matching pairs of random users to connect with each other to exchange informative news, interesting facts on a daily basis. Users can sign up, login quickly through their Google account along with personalizing their profile. After the small talk, they can add friends to enable private chat, form a group chat by inviting other users either by searching for a username or by providing a link to access. Users can also use voice chat and emojis. Rather than reading long news, people bring informative facts/news to others through communication form. The purpose of this chat app is for everyone to feel comfortable talking and exchange information with other strangers on a daily basis.
 
# How is this problem solved currently?
Currently, social networking apps such as Facebook do great work to provide a convenient platform connecting people with plenty of prominent features such as private chat/group chat, share user information and their status among the community. However, people usually need to have real-life relationships to connect and "being friends" on Facebook to access full features.
On the side of gaining valuable information, Quora and Reddit are mainstream platforms for “ask me anything” purposes, people can ask and get a lot of useful information in different fields. However, those platforms focus on informative purposes rather than connection and communication between people.
With ChatApp21, people can get information in an enjoyable way, maintain small talk with strangers, and exchange interesting information happening around the world in a day. The good side of our ChatApp21 is that not only we focus on exchanging informative facts/news in a day but also simple ways to connect users.
 
# How will this project make life easier?
ChatApp21 connects people to each other in a different way than a normal social media platform. Matching users randomly and restricting features, talk with one person per day at least 5 minutes, users could meet one stranger friend to share their interesting news they have on this day in a comfortable way. 
Also, if they feel they are a good match, they could add friends and go further to talk with others daily. Further, they could form a group chat later for users ofthe same interest.

# Who is the target audience? Who will use your product?
Our target audience is everyone who likes connecting with others, exchanging and gaining knowledge/news information on a daily basis.

# What are the features?
- People can sign up/login easily using Google API. 
- Users can customize their user profile with basic identity information and the avatar feature.
- Users have the freedom to express their opinions, expand their knowledge by communicating with each other. 
- Users can add friends and invite users to platforms, group chat do not need many steps, just simply by searching username or using the link is provided.
- Toward chatting features, emoji frequently list on top along with voice chat makes communication faster and especially, accessibility purpose benefit for disabled people. This should include more API.
- Random users are matched and challenged to have a conversation for at least 5 minutes.
 
# What are some sample stories/scenarios?
- Users would be able to access the random pair system to chat with others and further, make group chat, invite others who are also interested in this information/events.
- Any user who initiates a group chat will become a moderator for the chat. Moderators have the access to manage the chat by muting or removing other users. 
- Admin has the power to suspend an account indefinitely. Afterwards, they can issue a warning for suspended users. It will inform them of their misconduct and require their acknowledgement of the issue in order to unlock their account. Admin can also delete the account of the dangerous/uncooperative users.

# Features implemented:
- Sign up/login using Google API
- Functional navigation bar to access the profile, homepage, and chatroom
- Display of basic identity information automatically with name and email retrieved from Google account as default.
- Customization of user profile with basic identity information and the avatar feature.
- Sidebar displaying online users
- Messaging to other online users

# Features planned for next iterations:
- More methods for authentications such as Github and email
- Admin account and its features:
    + Blocking/unblocking user accounts from using chat
    + Receiving report of misconducts of users
    + Sending users warnings
- Chat emojis

# Other features for consideration but not planned for next iteration:
- Voice chat
- Pairs of random users matched and challenged to have a conversation for 5 minutes


