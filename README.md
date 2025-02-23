# docker-proxy-vpn

This project sets up a Docker container that runs an OpenVPN client and a Dante SOCKS proxy server. The container uses `supervisord` to manage the services.

## Project Structure
- `dante.conf`: Configuration file for the Dante SOCKS proxy server.
- `Docerfile`: Dockerfile to build the Docker image.
- `docker-compose.yml`: Docker Compose file to set up and run the container.
- `LICENSE`: License file (GNU General Public License v3.0).
- `openvpn-config/client.conf`: Configuration file for the OpenVPN client.
- `README.md`: Project documentation.
- `supervisord.conf`: Configuration file for `supervisord` to manage OpenVPN and Dante services.

## Prerequisites

- Docker
- Docker Compose

## Setup

1. Clone the repository:

    ```sh
    git clone https://github.com/darek1945/docker-proxy-vpn.git
    cd docker-proxy-vpn
    ```

2. Place your OpenVPN client certificates (`ca.crt`, `client.crt`, `client.key`) in the [openvpn-config] directory.

3. Build and run the Docker container using Docker Compose:

    ```sh
    docker-compose up --build -d
    ```

## Configuration

### OpenVPN

The OpenVPN client configuration is located in [client.conf]. Update this file with your server details and certificate paths.

### Dante SOCKS Proxy

The Dante SOCKS proxy configuration is located in [dante.conf]. Update this file to configure the proxy settings as needed.

### Supervisord

The `supervisord` configuration is located in [supervisord.conf]. This file manages the OpenVPN and Dante services.

## Usage

Once the container is running, the SOCKS proxy will be available on port `1080` of the host machine. Configure your applications to use `localhost:1080` as the SOCKS proxy.

## License

This project is licensed under the GNU General Public License v3.0. See the [LICENSE] file for details.