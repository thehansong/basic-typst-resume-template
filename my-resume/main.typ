#import "../src/lib.typ": *

// Put your personal information here, replacing mine
#let name = "(Hans) ONG You Yang"
#let location = "Singaporean"
#let email = "thehansong@gmail.com"
#let github = "github.com/thehansong"
#let linkedin = "linkedin.com/in/thehansong"
#let phone = "+65 9868 9019"
#let personal-site = "thehansong.com"

#show: resume.with(
  author: name,
  // All the lines below are optional.
  // For example, if you want to to hide your phone number:
  // feel free to comment those lines out and they will not show.
  location: location,
  email: email,
  github: github,
  linkedin: linkedin,
  phone: phone,
  personal-site: personal-site,
  accent-color: "#26428b",
  font: "New Computer Modern",
  paper: "us-letter",
  author-position: left,
  personal-info-position: left,
)

/*
* Lines that start with == are formatted into section headings
* You can use the specific formatting functions if needed
* The following formatting functions are listed below
* #edu(dates: "", degree: "", gpa: "", institution: "", location: "", consistent: false)
* #work(company: "", dates: "", location: "", title: "")
* #project(dates: "", name: "", role: "", url: "")
* certificates(name: "", issuer: "", url: "", date: "")
* #Leadership(activity: "", dates: "")
* There are also the following generic functions that don't apply any formatting
* #generic-two-by-two(top-left: "", top-right: "", bottom-left: "", bottom-right: "")
* #generic-one-by-two(left: "", right: "")
*/

== Education

#edu(
  institution: "Singapore Institute of Technology & DigiPen Institute of Technology",
  location: "Singapore & Redmond, WA",
  dates: dates-helper(start-date: "Aug 2022", end-date: "Apr 2026"),
  degree: "Bachelor's of Science, Computer Science in Real-Time Interactive Simulation (RTIS)",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)
// - Cumulative GPA: 4.0\/4.0 | Dean's List, Harvey S. Mudd Merit Scholarship, National Merit Scholarship
// - Relevant Coursework: Data Structures, Program Development, Microprocessors, Abstract Algebra I: Groups and Rings, Linear Algebra, Discrete Mathematics, Multivariable & Single Variable Calculus, Principles and Practice of Comp Sci

#edu(
  institution: "The Wharton School — University of Pennsylvania",
  location: "Philadelphia, PA (Remote from Singapore)",
  dates: dates-helper(start-date: "Aug 2025", end-date: "Oct 2025"),
  degree: "Executive Education, Product Management and Strategy",

  // Uncomment the line below if you want edu formatting to be consistent with everything else
  // consistent: true
)

== Work Experience

#work(
  company: "Uber Technologies, Inc.",
  dates: dates-helper(start-date: "May 2024", end-date: "Present"),
  title: "AI Solutions Engineer",
  location: "Singapore (Remote)",
)
- Played God with tiny molecules, making them dance to uncover the secrets of the universe
- Convinced high-performance computers to work overtime without unions, reducing simulation time by 50%
- Wowed a room full of nerds with pretty pictures of invisible things and imaginary findings

#work(
  company: "GovTech Singapore",
  dates: dates-helper(start-date: "Dec 2023", end-date: "Mar 2024"),
  title: "AI Engineer Intern",
  location: "Singapore",
)
- Taught robots to predict when (and how much!) humans will empty their wallets at the doctor's office
- Developed HIPAA-compliant digital signatures, because doctors' handwriting wasn't illegible enough already
- Turned spaghetti code into a gourmet dish, making other interns drool with envy

#work(
  company: "GovTech Singapore",
  dates: dates-helper(start-date: "Dec 2023", end-date: "Mar 2024"),
  title: "Full-Stack Software Engineer Intern",
  location: "Singapore",
)
- Scaled user base from 10 to 2000+, accidentally becoming a small wealthy nation in the process
- Crafted Bash scripts so clever they occasionally made other engineers weep with joy
- Automated support responses, reducing human interaction to a level that would make introverts proud
- Built a documentation site that actually got read, breaking the ancient RTFM curse

#work(
  company: "Stealth Startup (Fintech)",
  dates: dates-helper(start-date: "Dec 2023", end-date: "Mar 2024"),
  title: "Software Engineer Intern",
  location: "San Francisco, CA",
)
- Developed a cross-platform mobile app that turned every user into a potential paparazzi
- Led a security overhaul, heroically saving the company from the menace of "password123"

== Projects

/* #project(
  name: "abc",
  // Role is optional
  role: "Co-developer",
  // Dates is optional
  dates: dates-helper(start-date: "Nov 2023", end-date: "Present"),
  // URL is also optional
  url: "hyperschedule.io",
)
- Maintain open-source scheduler used by 7000+ users at the Claremont Consortium with TypeScript, React and MongoDB
  - Manage PR reviews, bug fixes, and coordinate with college for releasing scheduling data and over \$1500 of yearly funding
- Ensure 99.99% uptime during peak loads of 1M daily requests during course registration through redundant servers */

#project-neurotune(
  name: "NeuroTune",
  tech: "Unity, C#, AI, Machine Learning, HCI",
  steam: "https://steamcommunity.com/games/714010/announcements/detail/6470072677790935150",
  paper: "https://www.thehansong.com/assets/paper/NeuroTune_Paper.pdf",
  github: "https://github.com/thehansong/NeuroTune",
  youtube: "https://youtu.be/4m7v8S-D6N8"
)
- Pitched to and adopted by Statespace (creators of #link("https://store.steampowered.com/app/714010/Aimlabs/")[AimLabs]) as Adaptive Tasks; integrated in September 2024, reaching a global player base of *40M+ users*.
- Developed NeuroTune, an AI-powered FPS aim trainer in Unity, C\# that adapts target size, spawn, and timing in real-time based on player performance to deliver personalized training in a 3D environment.


== Leadership

#Leadership(
  activity: "Capture The Flag Competitions",
  dates: dates-helper(start-date: "Jan 2021", end-date: "Present"),
)
- Founder of Les Amateurs (#link("https://amateurs.team")[amateurs.team]), currently ranked \#4 US, \#33 global on CTFTime (2023: \#4 US, \#42 global)
- Organized AmateursCTF 2023 and 2024, with 1000+ teams solving at least one challenge and \$2000+ in cash prizes
  - Scaled infrastructure using GCP, Digital Ocean with Kubernetes and Docker; deployed custom software on fly.io
- Qualified for DEFCON CTF 32 and CSAW CTF 2023, two of the most prestigious cybersecurity competitions globally

// #Leadership(
//   activity: "Science Olympiad Volunteering",
//   dates: "Sep 2023 --- Present"
// )
// - Volunteer and write tests for tournaments, including LA Regionals and SoCal State \@ Caltech

// #certificates(
//   name: "OSCP",
//   issuer: "Offensive Security",
//   // url: "",
//   date: "Oct 2024",
// )

== Skills
- *Programming Languages*: JavaScript, Python, C/C++, HTML/CSS, Java, Bash, R, Flutter, Dart
- *Technologies*: React, Astro, Svelte, Tailwind CSS, Git, UNIX, Docker, Caddy, NGINX, Google Cloud Platform
