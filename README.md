# Sound Source Tracking as a Heuristic for Frontier Exploration in Search and Rescue using a Quadruped Mobile Robot

***AKA: Teaching a robot dog how to play marco polo*** :speaking_head:...:robot:...:dog2: 

  

## Project Overview
This repository covers the development of the research performed by [Francesco Marrato](https://offroad.engineering.queensu.ca/people/franc-marrato/) while completing his MASc in Electrical and Computer Engineering at Queen's University. This research was made possible by Queen's University, Ingenuity Labs, and Professor Joshua Marshall (MASc Supervisor).

This repo outlines the development of a system that integrates autonomous exploration agents for disasters scenarios with robots that have the ability to interpret their surroundings through sound. We developed an autonomous frontier exploration system that uses sound source tracking of human voices as a novel heuristic for search. Our system is capable of exploring previously unknown environments and locating a target sound source which emits human speech. Our system was implemented on a Boston Dynamics Spot quadrupedal robot equipped with a four-microphone array. Field trials were conducted in a laboratory environment and in simulated disaster scenarios in both natural forest and urban environments. This research stands to demonstrate that sound source tracking tuned for the human voice is a suited heuristic to bring autonomous search agents used in disaster scenarios closer in capability to the humans they assist.

## Thesis, Posters, and, Publications
The full thesis will be available here when it has been completed :grin:

### IROS Detroit - October 2023

<div align="center">
<img align="center" src="https://github.com/offroad-robotics/sst_as_a_heuristic_for_frontier_exploration/blob/main/project_images/IROS%202023%20Detroit.jpg" height="350">
</div>
 
### NCRN Annual General Meeting - June 2023
A poster submitted to the 2023 NSERC Canadian Robotics Network (NCRN) AGM poster session hosted by Toronto Robotics and AI Laboratory at the University of Toronto.

<div align="center">
<img align="center" src="https://github.com/offroad-robotics/sst_as_a_heuristic_for_frontier_exploration/blob/main/project_images/NCRN_2023_poster_Francesco_Marrato_ingenuity.jpg" height="350">
</div>

### Robotics and AI Symposium - December 2022
A poster submitted to the Robotics and AI Symposium 2022 (RAIS2022) hosted by Ingenuity Labs at Queen's University in Kingston, ON. 

<div align="center">
<img align="center" src="https://i.imgur.com/nef93yy.jpg" height="550">
</div>

<div align="center">
<a href="https://ingenuitylabs.queensu.ca/rais2022/" style="display: inline-block;">Check out the full RAIS2022 summary.</a>
</div>

## Videos and Press

### Queen's GRADFlix - June 2023
A short video summary of my research was submitted to the GRADFlix video demonstration. GRADFlix is an event hosted by the School of Graduate Studies and Postdoctoral Affairs at Queen's University to show off what current research is going on at Queen's. 

<!--The full video is available [here](https://www.youtube.com/watch?v=uOkLzl4GJig&ab_channel=FrancMarrato) -->

[![Spot Demo Video](https://img.youtube.com/vi/uOkLzl4GJig/0.jpg)](https://www.youtube.com/watch?v=uOkLzl4GJig&ab_channel=FrancMarrato)

### CFRC Radio Grad Chat - May 2023
I spoke about [Ingenuity Labs](https://ingenuitylabs.queensu.ca/) and my research on Queen's campus public radio. You can listen to the recording on [Spotify](https://open.spotify.com/episode/3wBFRkxy7MgARSv7uHL3Z2?si=2572f539d26242d2) or [Apple Music](https://podcasts.apple.com/gb/podcast/francesco-marrato-electrical-computer-engineering-training/id1077486712?i=1000612480212).

[![Grad Chat Spot](https://is1-ssl.mzstatic.com/image/thumb/Podcasts123/v4/f8/37/8d/f8378d7d-8153-3a98-f8c8-e01a79a80d47/mza_8937439498922820260.jpg/600x600bb.jpg)](https://open.spotify.com/episode/3wBFRkxy7MgARSv7uHL3Z2?si=2572f539d26242d2)

## System Components
Provided are short, high level, breakdowns of some of the major sub components that make up the frontier exploration system. For a thorough breakdown, justification, and analysis of the entire system please review the provided thesis.

### Hardware
This research included the development of a custom backpack. The backpack included the following;

- An Intel NUC for ROS compatibility
- A ReSpeaker 4-Mic Array
- A Ublox Neo M9N GPS
- A Microstrain 3dm-gx5-25 imu
- A 12V 150W Power Supply

A ruggedized frame was printed using a continuous carbon fiber embedding process to provide impact and crush resistance. Additionally, the microphone mast was designed to be sacrificial, snapping off in a controlled manner in the event of a rollover. Full Fusion360 files are available [here](https://a360.co/3OP8Lgn).
<div align="center">
<img src="https://github.com/offroad-robotics/sst_as_a_heuristic_for_frontier_exploration/blob/main/project_images/FullHardware.JPG" width="250"  />
<br/><br/> 
<img src="https://github.com/offroad-robotics/sst_as_a_heuristic_for_frontier_exploration/blob/main/project_images/Spot_Thesis_Rotating_Gif.gif" width="250" />
</div>

### Sound Source Localization, Tracking, Separation, and Classification

The system identifies human speech through a four stage process, providing a unit vector in the estimated direction of the human speaker to the rest of the ROS systems.

<div align="center" width="100%">
<img align="center" src="https://github.com/offroad-robotics/sst_as_a_heuristic_for_frontier_exploration/blob/main/project_images/sound_source_selection_single.jpg" height="400">
</div>

\
Using the [ODAS](https://github.com/introlab/odas_ros) software as a base, we extend the sound source tracking ability by first separating each tracked source. We feed each tracked source through a [YAMnet](https://www.tensorflow.org/hub/tutorials/yamnet#:~:text=YAMNet%20is%20a%20deep%20net,Mobilenet_v1%20depthwise%2Dseparable%20convolution%20architecture.&text=Load%20the%20Model%20from%20TensorFlow%20Hub.)  classification model. Each tracked source is given a confidence rating on its likelyhood of containing human speech. 

### Local to Global Occupancy Grid Mapping
Local occupancy grids are generated by Spot with a range of ~3 m in all directions. Our system stitches occupancy grids togther as Spot explores. Spot begins with no prior knowledge of its environment and progressively maps obstacles as it searches. 

<div align="center" width="100%">
<img align="center" src="https://github.com/offroad-robotics/sst_as_a_heuristic_for_frontier_exploration/blob/main/project_images/occupancy_map.png" height="400">
</div>

### Safe Node Network
Spot builds a network graph of safe travel positions as it explores its environment. This node graph is used to plan safe travel trajectories when exploring complex unknown environments. Each time a new frontier is successfully achieved, it is added to the node graph, expanding Spot's opperating space.

<div align="center" width="100%">
<img align="center" src="https://github.com/offroad-robotics/sst_as_a_heuristic_for_frontier_exploration/blob/main/project_images/digital_twin.jpg" height="400">
</div>

### Frontier Grading
Frontiers are evaluated based on their similarity in direction compared to the estimated vector of the human speaker. The heuristic for frontier rading is demonstrated below.

<div align="center" width="100%">
<img align="center" src="https://github.com/offroad-robotics/sst_as_a_heuristic_for_frontier_exploration/blob/main/project_images/frontier_scoring_heuristic.jpg" height="400">
</div>

Historically, frontier exploration exploits lowest cost or highest potential for map expansion as the heuristic for search. This research explores the use of a unique heuristic, utilizing a beyond line of sight modality for applications in search and rescue.

### State Machine
A state machine was implemented using the SMACH library, connecting all the mentioned components.
The design philosophy was that the state machine would access individual system nodes through ROS actions and services while each node managed its own data.
The state machine consists of Start, Plan, Execute, Recover, Update, and Check states for nominal use, with an eight Error state reserved to perform a safe 
shutdown under any unforeseen circumstances.

<div align="center" width="100%">
<img align="center" src="https://github.com/offroad-robotics/sst_as_a_heuristic_for_frontier_exploration/blob/main/project_images/thesis_state_machine_.png" height="800">
</div>

## Status
Final touches on thesis and preparing for defense.
## Contact Info
If you wish to get in touch with Francesco Marrato.


Email: 15fram@queensu.ca  
Github: https://github.com/TankyFranky  
LinkedIn: https://www.linkedin.com/in/francesco-marrato/

