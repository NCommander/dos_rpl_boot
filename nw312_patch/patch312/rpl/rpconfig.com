�-                                           SSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSSS   
                                                                              
Novell Remote Program Load VAP Configuration Utility v1.00
(C) Copyright 1990 Novell Inc.  All Rights Reserved.$
DOS Error 99: $RPL.vp? has been SUCCESSFULLY Configured.$
Search String "RPConfig" NOT Found in $?@��	AA�	BB�	CD�	DH�	VOL��	 �������������������RPL.vp? NOT Found$Path NOT Found$Too Many Open Files$Write Access Denied$Out of Memory$INVALID Drive$Device has CHANGED$

Valid Parameters are:  VOL=vol,A,B,C,D

VOL=vol	The DRIVE, VOLUME, and DIRECTORY where RPL.VAP is located.
	If NOT entered, the Current VOLUME is ASSUMED.
A	Specify Remote Program Load File for LAN Driver A.
	If NOT entered, LAN Driver "A" Remote Program Load will be DISABLED.
$
At Least ONE LAN Driver (A,B,C, or D) MUST be Entered.

ALL Parameters are separated by COMMAs or BLANKS, are OPTIONAL, are NOT case
sensitive, and may be entered in ANY order.  Enter ? to display this Panel.

Enter Parameters: $

The File Name is the file you wish to have the VAP DOWNLOAD to the WORKSTATION
in response to a request from the RPL boot ROM on the WORKSTATION Adapter 
Card.  It is NOT the file you created with DOSGEN.  It is a MAXIMUM of 
ELEVEN (11) characters long and MUST be located in the SYS:LOGIN directory 
of the OS.  WILDCARD characters (*,?) are ALLOWED, which will cause the VAP 
to find the FIRST file in SYS:LOGIN that matches the specification.
If NOTHING is entered for the LAN Driver, *.RPL is ASSUMED.
$
Enter File Name for LAN Driver "A": $� ���!��V�6�/�pr�* ��:�'�u9+���T�A��P�������X��@<Er����
� � �!볋�y��N�R� �'�}ܪ�>T�=Z� ��?� � �-� � ��;�riB��u�+��@W�_���.s.�	�W�E�U�
� �!+���-�� ��u����+_�� �+�>+Er��" �>�0 � +ۺ���B�$�c��>T��;� B+�+��	 �@� ���!rñ
*����00������s��t	�� ��Z��	�!�ôL�!�G×���x�u�ON�D�$�<0r<9v<Ar<Zw�\��>T���� �,+��~tG�֍~���}�]�����5�<ar<zw$߮��u���u3�u�+���US�}��[rk�t��W�>Í\�� �� �ct/F�����<=u���@u��� tB��W�}�4 _s��u��*���r��w󤖸" ������$���ҸWt�� USW+���+��KONCF�$<0r^<9v��uU <arO<fwK�����O��r?�Hu��t$+�G�A��������Q�� O��Yr�;�u�
�u���@t	$�ʹ������ˋ�_[]����	  
�,�$Q� :�tW��
�_��Y�0�t��0P���!X����	�!�ô ����uF<w�N+��.
$

is invalidis not supported
is too big The parameter "$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$�