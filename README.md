<h1 align="center">
Dockerized Dogecoin Full Node [DOGE, Ð]  
<br/><br/>
<img src="https://static.tumblr.com/ppdj5y9/Ae9mxmxtp/300coin.png" alt="Dogecoin" width="300"/>
</h1>

<div align="center">

[![DogecoinBadge](https://img.shields.io/badge/Doge-Coin-yellow.svg)](https://dogecoin.com)
[![MuchWow](https://img.shields.io/badge/Much-Wow-yellow.svg)](https://dogecoin.com)

</div>

## Usage 💻
You can build and run the docker image using Makefile included.

- make build - builds the docker image locally based on Ubuntu 20.04 with dogecoin version specified at the top of the Makefile.
- make run - runs the image locally mounting your ~/.dogecoin directory and restarting the docker until it is explicitly being shut down.

You might want to download the blockchain snapshot via torrent or a bootstrap.dat to ~/.dogecoin in order to prevent the slow download of the complete blockchain.

## Credits 🤝
Thanks to Dogecoin developers for their great work and DogecoinIsAwesome (which it is) for detailed installation instructions.
* [dogecoin.com](https://dogecoin.com)

* [DogecoinIsAwesome.com](https://dogecoinisawesome.com/full-node)
