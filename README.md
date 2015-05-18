## Codepath Week 2 Homework

Prototype for Dropbox's Carousel app, including some cool animations. 

Hours spent: 10+

#Tasks completed:

- Static photo tiles on the initial screen
- Optional: Photo tiles move with scrolling

Sign In
- Tapping on email/password reveals the keyboard and shifts the scrollview and Sign In button up.
- User sees an error alert when no email is present or no password is present.
- User sees a loading screen upon tapping the Sign In button.
- alertView.dismissWithClickedButtonIndex(0, animated: true) dismisses the loading screen with no buttons.
- User sees an error alert when entering the wrong email/password combination.
- User is taken to the tutorial screens upon entering the correct email/password combination.

Tutorial Screens
- User can page between the screens 
- Optional: I tried really hard to get the dots working but I couldn't figure it out... var page didn't seem to work.  As a result couldn't do the fade in either, but I looked up and saw an example of how it might be done

Image Timeline
- Display a scrollable view of images.
- User can tap on the conversations button to see the conversations screen (push).
- User can tap on the profile image to see the settings view (modal from below).

Settings
- User can dismiss the settings screen.
- User can log out

