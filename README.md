broadcom-wl-linux-mainline
===========================
Patches for the officially unsupported broadcom-wl driver to work with the latest Linux kernels.

This repository is roughly aligned with the [Arch Linux broadcom-wl-dkms](https://archlinux.org/packages/extra/x86_64/broadcom-wl-dkms/) package, but may contain newer patches.

# Quickstart (Debian, Ubuntu and derivatives)

```sh
sudo apt install git wget build-essential linux-headers-generic
git clone https://github.com/joanbm/broadcom-wl-linux-mainline
cd broadcom-wl-linux-mainline
./install
```

# Scripts

* `./install`: Download the driver, apply the patches, and launch the installer.
* `./buildtest`: Download the driver, apply the patches, and build the kernel driver. For development.
* `./download`: Download the driver from the Broadcom website.
* `./extract_and_patch`: Extract the driver and apply the patches, and nothing else. For development.

# Disclaimer

THIS SOFTWARE IS PROVIDED "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED.
IN NO EVENT SHALL ANY PARTY BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
