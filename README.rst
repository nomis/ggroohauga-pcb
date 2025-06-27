Logitech® Z906 Surround Sound Speakers
======================================

Overview
--------

PCB for an alternative console and simulated amplifier interface for the
ESP32-S3 microcontroller interacting with Logitech® Z906 Surround Sound
Speakers.

.. image:: ggroohauga-amplifier.svg
   :alt: Front and back of amplifier PCB

.. image:: ggroohauga-console.svg
   :alt: Front and back of console PCB

.. image:: ggroohauga-bridge.svg
   :alt: Front and back of bridge PCB

Purpose
-------

Provide an unofficial alternative console (to control the amplifier directly
without the original console) and simulated amplifier interface (to indirectly
control an amplifier with the original console).

Usage
-----

This project is made up of 3 KiCad projects, each of which share the same common
schematic file. These projects depend on support for symbolic links (which
can be enabled in Developer Mode if you're using Windows).

Components
----------

+-------+--------------------------------------------------------+-------------------+
| Ref   | Name                                                   | PCB               |
+=======+========================================================+===================+
|       | ESP32-S3 Development Board                             | all               |
+-------+--------------------------------------------------------+-------------------+
| S3L1  | 1x20 Pin Socket, Through Hole (2.54mm)                 | all               |
+-------+--------------------------------------------------------+-------------------+
| S3R1  | 1x20 Pin Socket, Through Hole (2.54mm)                 | all               |
+-------+--------------------------------------------------------+-------------------+
| A-C1  | 0.1µF Capacitor, SMD 0805 (Metric 2012)                | amplifier, bridge |
+-------+--------------------------------------------------------+-------------------+
| A-C2  | 0.1µF Capacitor, SMD 0805 (Metric 2012)                | amplifier, bridge |
+-------+--------------------------------------------------------+-------------------+
| A-J1  | Amphenol L77HDE15SD1CH4R DE-15 socket                  | amplifier, bridge |
+-------+--------------------------------------------------------+-------------------+
| A-J2  | Same Sky SJ1-3523N 3.5mm Audio Jack                    | amplifier         |
+-------+--------------------------------------------------------+-------------------+
| A-J3  | Same Sky SJ1-3523N 3.5mm Audio Jack                    | amplifier         |
+-------+--------------------------------------------------------+-------------------+
| A-R1  | 1kΩ Resistor, SMD 0805 (Metric 2012)                   | amplifier, bridge |
+-------+--------------------------------------------------------+-------------------+
| A-U1  | Texas Instruments ISO6742DWR Digital Isolator, SOIC-16 | amplifier, bridge |
+-------+--------------------------------------------------------+-------------------+
| C-J1  | Amphenol L717HDE15PD1CH4F DE-15 plug                   | console, bridge   |
+-------+--------------------------------------------------------+-------------------+
| C-Q1  | Diodes DMP2004K P-Channel MOSFET, SOT-23               | console, bridge   |
+-------+--------------------------------------------------------+-------------------+

Supported ESP32-S3 Boards
-------------------------

* LOLIN WEMOS S3
* Espressif ESP32-S3-DevKitC-1
* Espressif ESP32-S3-DevKitM-1

Amplifier Signals GPIOs
~~~~~~~~~~~~~~~~~~~~~~~

Amplifier Power In should only be pulled down, to avoid back-powering the
amplifier microcontroller when mains power is off.

+------------------------+-------+---------+-----------+-----------+----------+----------+
| Name                   |  Pin  |  LOLIN  |  DevKitC  |  DevKitM  |  Socket  |  Active  |
+========================+=======+=========+===========+===========+==========+==========+
| Amplifier Power In     |   11  |    8    |     8     |    10     |   L 12   |   High   |
+------------------------+-------+---------+-----------+-----------+----------+----------+
| Console Announce       |   15  |   48    |    35     |    36     |   R 13   |   Low    |
+------------------------+-------+---------+-----------+-----------+----------+----------+
| Amplifier Detect       |    8  |   14    |    48     |    33     |   R 16   |          |
+------------------------+-------+---------+-----------+-----------+----------+----------+
| Amplifier RX           |   13  |   10    |    10     |    14     |   L 16   |          |
+------------------------+-------+---------+-----------+-----------+----------+----------+
| Amplifier TX           |   12  |    9    |     9     |    13     |   L 15   |          |
+------------------------+-------+---------+-----------+-----------+----------+----------+
| 3.3V                   |       |         |           |           |   L  1   |          |
+------------------------+-------+---------+-----------+-----------+----------+----------+
| GND                    |    6  |         |           |           |   R  1   |          |
+------------------------+-------+---------+-----------+-----------+----------+----------+


Console Signals GPIOs
~~~~~~~~~~~~~~~~~~~~~

Prepare all other GPIOs and UART before applying console power,
otherwise it will report a communication error.

+------------------------+-------+---------+-----------+-----------+----------+----------+
| Name                   |  Pin  |  LOLIN  |  DevKitC  |  DevKitM  |  Socket  |  Active  |
+========================+=======+=========+===========+===========+==========+==========+
| Console Power Out      |   11  |   40    |    40     |    41     |   R  8   |   Low    |
+------------------------+-------+---------+-----------+-----------+----------+----------+
| Console RX             |   12  |    4    |     4     |     2     |   L  4   |          |
+------------------------+-------+---------+-----------+-----------+----------+----------+
| Console TX             |   13  |    6    |     6     |     4     |   L  6   |          |
+------------------------+-------+---------+-----------+-----------+----------+----------+
| Amplifier Announce     |    8  |   13    |    47     |    26     |   R 17   |          |
+------------------------+-------+---------+-----------+-----------+----------+----------+
| Console Detect         |   15  |   17    |    17     |     8     |   L 10   |   Low    |
+------------------------+-------+---------+-----------+-----------+----------+----------+
| 3.3V                   |       |         |           |           |   L  1   |          |
+------------------------+-------+---------+-----------+-----------+----------+----------+
| GND                    |    6  |         |           |           |   R  1   |          |
+------------------------+-------+---------+-----------+-----------+----------+----------+

Related Documentation
---------------------

* `Console firmware/interface/protocol <https://github.com/nomis/logitech-z906>`_

Related Software
----------------

* `Software to interact with the console/amplifier <https://github.com/nomis/ggroohauga>`_

Notices
-------

"Logitech" is a trademark of `Logitech International SA <https://www.logitech.com/>`_.
