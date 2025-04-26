Logitech® Z906 Surround Sound Speakers
======================================

Overview
--------

PCB for an alternative console and simulated amplifier interface for the
ESP32-S3 microcontroller interacting with Logitech® Z906 Surround Sound
Speakers.

Purpose
-------

Provide an unofficial alternative console (to control the amplifier directly
without the original console) and simulated amplifier interface (to indirectly
control an amplifier with the original console).

Usage
-----

This project is made up of 3 KiCad projects, each of which share the same
schematic file. These projects depend on support for symbolic links (which
can be enabled in Developer Mode if you're using Windows).

Supported ESP32-S3 Boards
-------------------------

* LOLIN WEMOS S3
* Espressif ESP32-S3-DevKitC-1
* Espressif ESP32-S3-DevKitM-1

Amplifier Signals GPIOs
~~~~~~~~~~~~~~~~~~~~~~~

Hold all other amplifier GPIOs in a high impedance state until Amplifier
Power In becomes active (high), to avoid back-powering the amplifier
components through the UART.

+------------------------+-------+---------+-----------+-----------+----------+
| Name                   |  Pin  |  LOLIN  |  DevKitC  |  DevKitM  |  Socket  |
+========================+=======+=========+===========+===========+==========+
| Amplifier Power In     |   11  |    8    |     8     |    10     |   L 12   |
+------------------------+-------+---------+-----------+-----------+----------+
| Console Announce       |   15  |   48    |    35     |    36     |   R 13   |
+------------------------+-------+---------+-----------+-----------+----------+
| Amplifier Detect       |    8  |   14    |    48     |    33     |   R 16   |
+------------------------+-------+---------+-----------+-----------+----------+
| Amplifier RX           |   13  |   10    |    10     |    14     |   L 16   |
+------------------------+-------+---------+-----------+-----------+----------+
| Amplifier TX           |   12  |    9    |     9     |    13     |   L 15   |
+------------------------+-------+---------+-----------+-----------+----------+
| 3.3V                   |       |         |           |           |   L  1   |
+------------------------+-------+---------+-----------+-----------+----------+
| GND                    |    6  |         |           |           |   R  1   |
+------------------------+-------+---------+-----------+-----------+----------+


Console Signals GPIOs
~~~~~~~~~~~~~~~~~~~~~

Prepare all other GPIOs and UART before applying console power,
otherwise it will report a communication error.

+------------------------+-------+---------+-----------+-----------+----------+
| Name                   |  Pin  |  LOLIN  |  DevKitC  |  DevKitM  |  Socket  |
+========================+=======+=========+===========+===========+==========+
| Console Power Out      |   11  |   40    |    40     |    41     |   R  8   |
+------------------------+-------+---------+-----------+-----------+----------+
| Console RX             |   12  |    4    |     4     |     2     |   L  4   |
+------------------------+-------+---------+-----------+-----------+----------+
| Console TX             |   13  |    6    |     6     |     4     |   L  6   |
+------------------------+-------+---------+-----------+-----------+----------+
| Amplifier Announce     |    8  |   13    |    47     |    26     |   R 17   |
+------------------------+-------+---------+-----------+-----------+----------+
| Console Detect         |   15  |   17    |    17     |     8     |   L 10   |
+------------------------+-------+---------+-----------+-----------+----------+
| 3.3V                   |       |         |           |           |   L  1   |
+------------------------+-------+---------+-----------+-----------+----------+
| GND                    |    6  |         |           |           |   R  1   |
+------------------------+-------+---------+-----------+-----------+----------+

Related Documentation
---------------------

* `Console firmware/interface/protocol <https://github.com/nomis/logitech-z906>`_

Related Software
----------------

* `Software to interact with the console/amplifier <https://github.com/nomis/ggroohauga>`_

Notices
-------

"Logitech" is a trademark of `Logitech International SA <https://www.logitech.com/>`_.
