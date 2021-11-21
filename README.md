## Archive notice
This project was created for educational purposes. And was never intended for use in any production setting.
To prevent forks and attempts to contribute I have archived it. 

## Home Project
The purpose of this project was to explore Mobile Applications, Embedded devices, And Decentralized Networking.

Smart homes today mainly rely on wifi for commutation. This is not a scabble solution. Wifi access points are not made to connect with 100+ devices at once. Mesh networks which pass message from device to device can support thousands of devices which is more suitable for smart homes. 

This project is a smart home system that makes use of mesh networks enable better scalability.

The project consists of several components that work together to form a complete solution.

- **HomeApp**: Enables users to setup, configure, and control the smart home. 
- **HomeNodes**: Nodes (Steps in a drag and drop script) that can be used with Node Red for automation.
- **HomeHub**: Central local device. Stores smart home data (groups and scenes). Connects bluetooth mesh network to the mobile app and node red. Provides a graphql api
- **MeshController**: Coprocessor device connected over usb. Provides bluetooth mesh connectivity to host device.   
- **GoMeshController**: Golang Library for using the MeshController Coprocessor.
- **ButtonFirmware**: A sample device in the mesh network.

## Working Diagram 

Mobile App/Node Red <==> Home Hub <==> Coprocessor <==> Mesh Devices

## Deployment

A nrf52840 dev kit and a nrf52832 dev kit are required for this.

Clone this repo and all its submodules and open the workspace in vscode.

Under /tools the script setup.sh will download all the needed tooling (on ubuntu).

To flash the firmware for the Button and MeshController run ```/tools/upload_fm.sh SN1 SN2```.

The dockerfile in /HomeHub is used for deployment for the hub.

The dockerfile in /HomeNodes deploys a instance of node red with HomeNodes included.

The HomeApp can be installed on a phone though the flutter extension in vscode.