FasdUAS 1.101.10   ��   ��    k             l     ��  ��    + % ====================================     � 	 	 J   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =   
  
 l     ��  ��    4 . Window Positioning Utility with Config Saving     �   \   W i n d o w   P o s i t i o n i n g   U t i l i t y   w i t h   C o n f i g   S a v i n g      l     ��  ��    + % ====================================     �   J   = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =      l     ��������  ��  ��        l     ��  ��    $  File path for saving settings     �   <   F i l e   p a t h   f o r   s a v i n g   s e t t i n g s      j     
�� �� 0 settingsfile settingsFile  b     	    l      ����   I    �� ! "
�� .earsffdralis        afdr ! m     ��
�� afdrcusr " �� #��
�� 
rtyp # m    ��
�� 
TEXT��  ��  ��    m     $ $ � % % T L i b r a r y : P r e f e r e n c e s : W i n d o w P o s i t i o n e r . p l i s t   & ' & l     ��������  ��  ��   '  ( ) ( l     �� * +��   *   Main script    + � , ,    M a i n   s c r i p t )  - . - i     / 0 / I     ������
�� .aevtoappnull  �   � ****��  ��   0 k    � 1 1  2 3 2 l     �� 4 5��   4 ( " Check if there are saved settings    5 � 6 6 D   C h e c k   i f   t h e r e   a r e   s a v e d   s e t t i n g s 3  7 8 7 r      9 : 9 n     ; < ; I    �������� .0 checkforsavedsettings checkForSavedSettings��  ��   <  f      : o      ���� $0 hassavedsettings hasSavedSettings 8  = > = l   ��������  ��  ��   >  ? @ ? Z    Y A B���� A o    	���� $0 hassavedsettings hasSavedSettings B k    U C C  D E D r     F G F n     H I H 1    ��
�� 
bhit I l    J���� J I   �� K L
�� .sysodlogaskr        TEXT K m     M M � N N n S a v e d   w i n d o w   s e t t i n g s   f o u n d .   W h a t   w o u l d   y o u   l i k e   t o   d o ? L �� O P
�� 
btns O J     Q Q  R S R m     T T � U U $ U s e   S a v e d   S e t t i n g s S  V�� V m     W W � X X , C o n f i g u r e   N e w   S e t t i n g s��   P �� Y��
�� 
dflt Y m     Z Z � [ [ $ U s e   S a v e d   S e t t i n g s��  ��  ��   G o      ���� 0 useexisting useExisting E  \ ] \ l   ��������  ��  ��   ]  ^�� ^ Z    U _ `���� _ =     a b a o    ���� 0 useexisting useExisting b m     c c � d d $ U s e   S a v e d   S e t t i n g s ` k   # Q e e  f g f r   # * h i h n  # ( j k j I   $ (�������� 0 loadsettings loadSettings��  ��   k  f   # $ i o      ���� 0 savedsettings savedSettings g  l m l I   + N�� n���� &0 positionappwindow positionAppWindow n  o p o n  , / q r q o   - /���� 0 	targetapp 	targetApp r o   , -���� 0 savedsettings savedSettings p  s t s n  / 4 u v u o   0 4����  0 appprocessname appProcessName v o   / 0���� 0 savedsettings savedSettings t  w x w n  4 9 y z y o   5 9���� 0 widthpercent widthPercent z o   4 5���� 0 savedsettings savedSettings x  { | { n  9 > } ~ } o   : >���� 0 heightpercent heightPercent ~ o   9 :���� 0 savedsettings savedSettings |   �  n  > C � � � o   ? C���� 0 horizontalpos horizontalPos � o   > ?���� 0 savedsettings savedSettings �  ��� � n  C H � � � o   D H���� 0 verticalpos verticalPos � o   C D���� 0 savedsettings savedSettings��  ��   m  ��� � L   O Q����  ��  ��  ��  ��  ��  ��   @  � � � l  Z Z��������  ��  ��   �  � � � l  Z Z�� � ���   � !  Get new settings from user    � � � � 6   G e t   n e w   s e t t i n g s   f r o m   u s e r �  � � � r   Z | � � � n   Z z � � � 1   v z��
�� 
ttxt � l  Z v ����� � I  Z v�� � �
�� .sysodlogaskr        TEXT � m   Z ] � � � � � T W h i c h   a p p l i c a t i o n   d o   y o u   w a n t   t o   p o s i t i o n ? � �� � �
�� 
dtxt � m   ` c � � � � � $ V i s u a l   S t u d i o   C o d e � �� � �
�� 
btns � J   d l � �  � � � m   d g � � � � �  C a n c e l �  ��� � m   g j � � � � �  C o n t i n u e��   � �� ���
�� 
dflt � m   m p � � � � �  C o n t i n u e��  ��  ��   � o      ���� 0 	targetapp 	targetApp �  � � � l  } }��������  ��  ��   �  � � � r   } � � � � n   } � � � � 1   � ���
�� 
ttxt � l  } � ����� � I  } ��� � �
�� .sysodlogaskr        TEXT � m   } � � � � � � � W h a t   i s   t h e   p r o c e s s   n a m e ?   ( O f t e n   s a m e   a s   a p p   n a m e ,   b u t   f o r   V S   C o d e   i t ' s   ' C o d e ' ) � �� � �
�� 
dtxt � o   � ����� 0 	targetapp 	targetApp � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  C a n c e l �  ��� � m   � � � � � � �  C o n t i n u e��   � �� ���
�� 
dflt � m   � � � � � � �  C o n t i n u e��  ��  ��   � o      ����  0 appprocessname appProcessName �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � l  � � ����� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � H W i n d o w   w i d t h   ( p e r c e n t a g e   o f   s c r e e n ) : � �� � �
�� 
dtxt � m   � � � � � � �  6 0 � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  C a n c e l �  ��� � m   � � � � � � �  C o n t i n u e��   � �� ���
�� 
dflt � m   � � � � � � �  C o n t i n u e��  ��  ��   � o      ���� 0 widthpercent widthPercent �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
ttxt � l  � � ����� � I  � ��� � �
�� .sysodlogaskr        TEXT � m   � � � � � � � J W i n d o w   h e i g h t   ( p e r c e n t a g e   o f   s c r e e n ) : � �� � �
�� 
dtxt � m   � � � � � � �  9 0 � �� � �
�� 
btns � J   � � � �  � � � m   � � � � � � �  C a n c e l �  ��� � m   � � � � � � �  C o n t i n u e��   � �� ���
�� 
dflt � m   � �   �  C o n t i n u e��  ��  ��   � o      ���� 0 heightpercent heightPercent �  l  � ���������  ��  ��    r   � n   �	 1  �
� 
bhit	 l  �
�~�}
 I  ��|
�| .sysodlogaskr        TEXT m   � � � h H o w   d o   y o u   w a n t   t o   p o s i t i o n   t h e   w i n d o w   h o r i z o n t a l l y ? �{
�{ 
btns J   � �  m   � � �  L e f t  m   � � �  C e n t e r �z m   � � � 
 R i g h t�z   �y�x
�y 
dflt m   � � �  C e n t e r�x  �~  �}   o      �w�w $0 horizontalchoice horizontalChoice  !  l �v�u�t�v  �u  �t  ! "#" r  %$%$ n  !&'& 1  !�s
�s 
bhit' l (�r�q( I �p)*
�p .sysodlogaskr        TEXT) m  ++ �,, d H o w   d o   y o u   w a n t   t o   p o s i t i o n   t h e   w i n d o w   v e r t i c a l l y ?* �o-.
�o 
btns- J  // 010 m  22 �33  T o p1 454 m  66 �77  C e n t e r5 8�n8 m  99 �::  B o t t o m�n  . �m;�l
�m 
dflt; m  << �==  C e n t e r�l  �r  �q  % o      �k�k  0 verticalchoice verticalChoice# >?> l &&�j�i�h�j  �i  �h  ? @A@ l &&�gBC�g  B 3 - Ask user if they want to save these settings   C �DD Z   A s k   u s e r   i f   t h e y   w a n t   t o   s a v e   t h e s e   s e t t i n g sA EFE r  &@GHG n  &<IJI 1  :<�f
�f 
bhitJ l &:K�e�dK I &:�cLM
�c .sysodlogaskr        TEXTL m  &)NN �OO d D o   y o u   w a n t   t o   s a v e   t h e s e   s e t t i n g s   f o r   f u t u r e   u s e ?M �bPQ
�b 
btnsP J  *2RR STS m  *-UU �VV  N oT W�aW m  -0XX �YY  Y e s�a  Q �`Z�_
�` 
dfltZ m  36[[ �\\  Y e s�_  �e  �d  H o      �^�^ 0 
shouldsave 
shouldSaveF ]^] l AA�]�\�[�]  �\  �[  ^ _`_ Z  Anab�Z�Ya = AHcdc o  AD�X�X 0 
shouldsave 
shouldSaved m  DGee �ff  Y e sb k  Kjgg hih l KK�Wjk�W  j   Save settings   k �ll    S a v e   s e t t i n g si m�Vm I  Kj�Un�T�U 0 savesettings saveSettingsn opo o  LM�S�S 0 	targetapp 	targetAppp qrq o  MP�R�R  0 appprocessname appProcessNamer sts c  PWuvu o  PS�Q�Q 0 widthpercent widthPercentv m  SV�P
�P 
longt wxw c  W^yzy o  WZ�O�O 0 heightpercent heightPercentz m  Z]�N
�N 
longx {|{ o  ^a�M�M $0 horizontalchoice horizontalChoice| }�L} o  ad�K�K  0 verticalchoice verticalChoice�L  �T  �V  �Z  �Y  ` ~~ l oo�J�I�H�J  �I  �H   ��� l oo�G���G  � - ' Position the window with user settings   � ��� N   P o s i t i o n   t h e   w i n d o w   w i t h   u s e r   s e t t i n g s� ��F� I  o��E��D�E &0 positionappwindow positionAppWindow� ��� o  pq�C�C 0 	targetapp 	targetApp� ��� o  qt�B�B  0 appprocessname appProcessName� ��� c  t{��� o  tw�A�A 0 widthpercent widthPercent� m  wz�@
�@ 
long� ��� c  {���� o  {~�?�? 0 heightpercent heightPercent� m  ~��>
�> 
long� ��� o  ���=�= $0 horizontalchoice horizontalChoice� ��<� o  ���;�;  0 verticalchoice verticalChoice�<  �D  �F   . ��� l     �:�9�8�:  �9  �8  � ��� l     �7���7  � $  Check if saved settings exist   � ��� <   C h e c k   i f   s a v e d   s e t t i n g s   e x i s t� ��� i    ��� I      �6�5�4�6 .0 checkforsavedsettings checkForSavedSettings�5  �4  � O     ��� L    �� I   �3��2
�3 .coredoexnull���     ****� 4    �1�
�1 
file� o    �0�0 0 settingsfile settingsFile�2  � m     ���                                                                                  sevs  alis    \  Macintosh HD               �z�BD ����System Events.app                                              �����z�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  � ��� l     �/�.�-�/  �.  �-  � ��� l     �,���,  � 7 1 Save settings to file using property list format   � ��� b   S a v e   s e t t i n g s   t o   f i l e   u s i n g   p r o p e r t y   l i s t   f o r m a t� ��� i    ��� I      �+��*�+ 0 savesettings saveSettings� ��� o      �)�) 0 	targetapp 	targetApp� ��� o      �(�(  0 appprocessname appProcessName� ��� o      �'�' 0 widthpercent widthPercent� ��� o      �&�& 0 heightpercent heightPercent� ��� o      �%�% 0 horizontalpos horizontalPos� ��$� o      �#�# 0 verticalpos verticalPos�$  �*  � k     O�� ��� l     �"���"  � : 4 Create a property list dictionary with all settings   � ��� h   C r e a t e   a   p r o p e r t y   l i s t   d i c t i o n a r y   w i t h   a l l   s e t t i n g s� ��� r     ��� K     �� �!���! 0 	targetApp  � o    � �  0 	targetapp 	targetApp� ���� 0 appProcessName  � o    ��  0 appprocessname appProcessName� ���� 0 widthPercent  � o    �� 0 widthpercent widthPercent� ���� 0 heightPercent  � o    �� 0 heightpercent heightPercent� ���� 0 horizontalPos  � o   	 
�� 0 horizontalpos horizontalPos� ���� 0 verticalPos  � o    �� 0 verticalpos verticalPos�  � o      �� 0 	plistdict 	plistDict� ��� l   ����  �  �  � ��� O    O��� k    N�� ��� l   ����  � &   Create a new property list file   � ��� @   C r e a t e   a   n e w   p r o p e r t y   l i s t   f i l e� ��� r    '��� I   %���
� .corecrel****      � null�  � ���
� 
kocl� m    �
� 
plif� �
��	
�
 
prdt� K    !�� ���
� 
pnam� o    �� 0 settingsfile settingsFile�  �	  � o      �� 0 theplist thePlist� ��� l  ( (����  �  �  � ��� l  ( (����  � : 4 Set the root of the property list to our dictionary   � ��� h   S e t   t h e   r o o t   o f   t h e   p r o p e r t y   l i s t   t o   o u r   d i c t i o n a r y� �� � O   ( N��� I  . M�����
�� .corecrel****      � null��  � ����
�� 
kocl� m   0 1��
�� 
plii� ����
�� 
insh�  ;   2 4� �����
�� 
prdt� K   5 G�� ����
�� 
kind� m   8 ;��
�� 
reco� ����
�� 
pnam� m   < ?�� ���  W i n d o w S e t t i n g s� �� ��
�� 
valL  o   B C���� 0 	plistdict 	plistDict��  ��  � n   ( + 2  ) +��
�� 
plii o   ( )���� 0 theplist thePlist�   � m    �                                                                                  sevs  alis    \  Macintosh HD               �z�BD ����System Events.app                                              �����z�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  �  �  l     ��������  ��  ��    l     ��	��   , & Load settings from property list file   	 �

 L   L o a d   s e t t i n g s   f r o m   p r o p e r t y   l i s t   f i l e  i     I      �������� 0 loadsettings loadSettings��  ��   Q     ` O    A k    @  r     4    ��
�� 
plif o   	 ���� 0 settingsfile settingsFile o      ���� 0 theplist thePlist  r     n     4    �� 
�� 
plii  m    !! �""  W i n d o w S e t t i n g s o    ���� 0 theplist thePlist o      ���� 0 settingsitem settingsItem #$# r    %&% n    '(' 1    ��
�� 
valL( o    ���� 0 settingsitem settingsItem& o      ���� 0 settingsdict settingsDict$ )*) l   ��������  ��  ��  * +,+ l   ��-.��  - / ) Create a record with the loaded settings   . �// R   C r e a t e   a   r e c o r d   w i t h   t h e   l o a d e d   s e t t i n g s, 0��0 L    @11 l 	  ?2����2 l 	  ?3����3 l 	  ?4����4 l 	  ?5����5 l 
  ?6����6 K    ?77 ��89�� 0 	targetApp  8 n    $:;: o   ! #���� 0 	targetApp  ; o     !���� 0 settingsdict settingsDict9 ��<=�� 0 appProcessName  < n  % )>?> o   & (���� 0 appProcessName  ? o   % &���� 0 settingsdict settingsDict= ��@A�� 0 widthPercent  @ n  * .BCB o   + -���� 0 widthPercent  C o   * +���� 0 settingsdict settingsDictA ��DE�� 0 heightPercent  D n  / 3FGF o   0 2���� 0 heightPercent  G o   / 0���� 0 settingsdict settingsDictE ��HI�� 0 horizontalPos  H n  4 8JKJ o   5 7���� 0 horizontalPos  K o   4 5���� 0 settingsdict settingsDictI ��L���� 0 verticalPos  L n  9 =MNM o   : <���� 0 verticalPos  N o   9 :���� 0 settingsdict settingsDict��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��  ��   m    OO�                                                                                  sevs  alis    \  Macintosh HD               �z�BD ����System Events.app                                              �����z�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��   R      ������
�� .ascrerr ****      � ****��  ��   k   I `PP QRQ l  I I��ST��  S / ) Return default settings if loading fails   T �UU R   R e t u r n   d e f a u l t   s e t t i n g s   i f   l o a d i n g   f a i l sR V��V L   I `WW K   I _XX ��YZ�� 0 	targetApp  Y m   J K[[ �\\ $ V i s u a l   S t u d i o   C o d eZ ��]^�� 0 appProcessName  ] m   L M__ �``  C o d e^ ��ab�� 0 widthPercent  a m   N Q���� <b ��cd�� 0 heightPercent  c m   R U���� Zd ��ef�� 0 horizontalPos  e m   V Ygg �hh  C e n t e rf ��i���� 0 verticalPos  i m   Z ]jj �kk  C e n t e r��  ��   lml l     ��������  ��  ��  m non l     ��pq��  p + % Main function to position the window   q �rr J   M a i n   f u n c t i o n   t o   p o s i t i o n   t h e   w i n d o wo sts i    uvu I      ��w���� &0 positionappwindow positionAppWindoww xyx o      ���� 0 	targetapp 	targetAppy z{z o      ����  0 appprocessname appProcessName{ |}| o      ���� 0 widthpercent widthPercent} ~~ o      ���� 0 heightpercent heightPercent ��� o      ���� 0 horizontalpos horizontalPos� ���� o      ���� 0 verticalpos verticalPos��  ��  v k    %�� ��� l     ������  � &   Activate the target application   � ��� @   A c t i v a t e   t h e   t a r g e t   a p p l i c a t i o n� ��� O     ��� k    �� ��� I   ������
�� .miscactvnull��� ��� null��  ��  � ���� l   ���� I   �����
�� .sysodelanull��� ��� nmbr� m    ���� ��  �    Give app time to activate   � ��� 4   G i v e   a p p   t i m e   t o   a c t i v a t e��  � 4     ���
�� 
capp� o    ���� 0 	targetapp 	targetApp� ��� l   ��������  ��  ��  � ��� l   ������  �   Get screen dimensions   � ��� ,   G e t   s c r e e n   d i m e n s i o n s� ��� Q    :���� r    +��� I      �������� *0 getscreendimensions getScreenDimensions��  ��  � J      �� ��� o      ���� 0 screenwidth screenWidth� ���� o      ���� 0 screenheight screenHeight��  � R      ������
�� .ascrerr ****      � ****��  ��  � k   3 :�� ��� l  3 3������  �   Fallback dimensions   � ��� (   F a l l b a c k   d i m e n s i o n s� ��� r   3 6��� m   3 4������ o      ���� 0 screenwidth screenWidth� ���� r   7 :��� m   7 8����8� o      ���� 0 screenheight screenHeight��  � ��� l  ; ;��������  ��  ��  � ��� l  ; ;������  � 7 1 Calculate window dimensions based on percentages   � ��� b   C a l c u l a t e   w i n d o w   d i m e n s i o n s   b a s e d   o n   p e r c e n t a g e s� ��� r   ; B��� ^   ; @��� l  ; >������ ]   ; >��� o   ; <���� 0 screenwidth screenWidth� o   < =�� 0 widthpercent widthPercent��  ��  � m   > ?�~�~ d� o      �}�} 0 windowwidth windowWidth� ��� r   C J��� ^   C H��� l  C F��|�{� ]   C F��� o   C D�z�z 0 screenheight screenHeight� o   D E�y�y 0 heightpercent heightPercent�|  �{  � m   F G�x�x d� o      �w�w 0 windowheight windowHeight� ��� l  K K�v�u�t�v  �u  �t  � ��� l  K K�s���s  � $  Calculate horizontal position   � ��� <   C a l c u l a t e   h o r i z o n t a l   p o s i t i o n� ��� Z   K l����� =  K N��� o   K L�r�r 0 horizontalpos horizontalPos� m   L M�� ���  L e f t� r   Q T��� m   Q R�q�q  � o      �p�p 0 	xposition 	xPosition� ��� =  W Z��� o   W X�o�o 0 horizontalpos horizontalPos� m   X Y�� ��� 
 R i g h t� ��n� r   ] b��� \   ] `��� o   ] ^�m�m 0 screenwidth screenWidth� o   ^ _�l�l 0 windowwidth windowWidth� o      �k�k 0 	xposition 	xPosition�n  � l  e l���� r   e l��� ^   e j��� l  e h��j�i� \   e h��� o   e f�h�h 0 screenwidth screenWidth� o   f g�g�g 0 windowwidth windowWidth�j  �i  � m   h i�f�f � o      �e�e 0 	xposition 	xPosition�   Center   � ���    C e n t e r� ��� l  m m�d�c�b�d  �c  �b  � ��� l  m m�a���a  � "  Calculate vertical position   � ��� 8   C a l c u l a t e   v e r t i c a l   p o s i t i o n� � � Z   m � =  m p o   m n�`�` 0 verticalpos verticalPos m   n o �  T o p r   s v	
	 m   s t�_�_  
 o      �^�^ 0 	yposition 	yPosition  =  y | o   y z�]�] 0 verticalpos verticalPos m   z { �  B o t t o m �\ r    � \    � o    ��[�[ 0 screenheight screenHeight o   � ��Z�Z 0 windowheight windowHeight o      �Y�Y 0 	yposition 	yPosition�\   l  � � r   � � ^   � � l  � ��X�W \   � � o   � ��V�V 0 screenheight screenHeight o   � ��U�U 0 windowheight windowHeight�X  �W   m   � ��T�T  o      �S�S 0 	yposition 	yPosition   Center    �      C e n t e r  !"! l  � ��R�Q�P�R  �Q  �P  " #$# l  � ��O%&�O  %   Apply settings to window   & �'' 2   A p p l y   s e t t i n g s   t o   w i n d o w$ (�N( Q   �%)*+) O   �,-, O   �./. Z   �01�M20 ?   � �343 l  � �5�L�K5 I  � ��J6�I
�J .corecnte****       ****6 2  � ��H
�H 
cwin�I  �L  �K  4 m   � ��G�G  1 k   � �77 898 O   � �:;: k   � �<< =>= r   � �?@? J   � �AA BCB o   � ��F�F 0 	xposition 	xPositionC D�ED o   � ��D�D 0 	yposition 	yPosition�E  @ 1   � ��C
�C 
posn> E�BE r   � �FGF J   � �HH IJI o   � ��A�A 0 windowwidth windowWidthJ K�@K o   � ��?�? 0 windowheight windowHeight�@  G 1   � ��>
�> 
ptsz�B  ; 4   � ��=L
�= 
cwinL m   � ��<�< 9 MNM l  � ��;�:�9�;  �:  �9  N OPO l  � ��8QR�8  Q   Show success message   R �SS *   S h o w   s u c c e s s   m e s s a g eP T�7T I  � ��6UV
�6 .sysodlogaskr        TEXTU m   � �WW �XX > W i n d o w   p o s i t i o n e d   s u c c e s s f u l l y !V �5YZ
�5 
btnsY J   � �[[ \�4\ m   � �]] �^^  O K�4  Z �3_�2
�3 
dflt_ m   � �`` �aa  O K�2  �7  �M  2 I  ��1bc
�1 .sysodlogaskr        TEXTb b   � �ded b   � �fgf m   � �hh �ii 2 N o   o p e n   w i n d o w s   f o u n d   i n  g o   � ��0�0 0 	targetapp 	targetAppe m   � �jj �kk < .   O p e n   a   f i l e   o r   f o l d e r   f i r s t !c �/lm
�/ 
btnsl J   � �nn o�.o m   � �pp �qq  O K�.  m �-r�,
�- 
dfltr m   � �ss �tt  O K�,  / 4   � ��+u
�+ 
prcsu o   � ��*�*  0 appprocessname appProcessName- m   � �vv�                                                                                  sevs  alis    \  Macintosh HD               �z�BD ����System Events.app                                              �����z�        ����  
 cu             CoreServices  0/:System:Library:CoreServices:System Events.app/  $  S y s t e m   E v e n t s . a p p    M a c i n t o s h   H D  -System/Library/CoreServices/System Events.app   / ��  * R      �)w�(
�) .ascrerr ****      � ****w o      �'�' 0 errormsg errorMsg�(  + I %�&xy
�& .sysodlogaskr        TEXTx b  z{z m  || �}} 4 E r r o r   p o s i t i o n i n g   w i n d o w :  { o  �%�% 0 errormsg errorMsgy �$~
�$ 
btns~ J  �� ��#� m  �� ���  O K�#   �"��!
�" 
dflt� m  �� ���  O K�!  �N  t ��� l     � ���   �  �  � ��� l     ����  � / ) Helper function to get screen dimensions   � ��� R   H e l p e r   f u n c t i o n   t o   g e t   s c r e e n   d i m e n s i o n s� ��� i    "��� I      ���� *0 getscreendimensions getScreenDimensions�  �  � O     ��� k    �� ��� r    ��� n    ��� 1   	 �
� 
pbnd� n    	��� m    	�
� 
cwin� 1    �
� 
desk� o      �� 0 _bounds  � ��� L    �� J    �� ��� n    ��� 4    ��
� 
cobj� m    �� � o    �� 0 _bounds  � ��� n    ��� 4    ��
� 
cobj� m    �� � o    �� 0 _bounds  �  �  � m     ���                                                                                  MACS  alis    @  Macintosh HD               �z�BD ����
Finder.app                                                     �����z�        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  �       	����������  � ��
�	����� 0 settingsfile settingsFile
�
 .aevtoappnull  �   � ****�	 .0 checkforsavedsettings checkForSavedSettings� 0 savesettings saveSettings� 0 loadsettings loadSettings� &0 positionappwindow positionAppWindow� *0 getscreendimensions getScreenDimensions� ��� � M a c i n t o s h   H D : U s e r s : b i s h e s h b h a t t a r a i : L i b r a r y : P r e f e r e n c e s : W i n d o w P o s i t i o n e r . p l i s t� � 0�����
� .aevtoappnull  �   � ****�  �  �  � @� �� M�� T W�� Z�������� c�������������������� ��� � � � ��� � � � � � � � � � � � � � ��+269<��NUX[��e�����  .0 checkforsavedsettings checkForSavedSettings�� $0 hassavedsettings hasSavedSettings
�� 
btns
�� 
dflt�� 
�� .sysodlogaskr        TEXT
�� 
bhit�� 0 useexisting useExisting�� 0 loadsettings loadSettings�� 0 savedsettings savedSettings�� 0 	targetapp 	targetApp��  0 appprocessname appProcessName�� 0 widthpercent widthPercent�� 0 heightpercent heightPercent�� 0 horizontalpos horizontalPos�� 0 verticalpos verticalPos�� �� &0 positionappwindow positionAppWindow
�� 
dtxt
�� 
ttxt�� $0 horizontalchoice horizontalChoice��  0 verticalchoice verticalChoice�� 0 
shouldsave 
shouldSave
�� 
long�� 0 savesettings saveSettings��)j+  E�O� N����lv��� 	�,E�O��  3)j+ E�O*��,�a ,�a ,�a ,�a ,�a ,a + OhY hY hOa a a �a a lv�a a  	a ,E�Oa a ��a a  lv�a !a  	a ,E` Oa "a a #�a $a %lv�a &a  	a ,E` Oa 'a a (�a )a *lv�a +a  	a ,E` Oa ,�a -a .a /mv�a 0� 	�,E` 1Oa 2�a 3a 4a 5mv�a 6� 	�,E` 7Oa 8�a 9a :lv�a ;� 	�,E` <O_ <a =  $*�_ _ a >&_ a >&_ 1_ 7a + ?Y hO*�_ _ a >&_ a >&_ 1_ 7a + � ������������� .0 checkforsavedsettings checkForSavedSettings��  ��  �  � �����
�� 
file
�� .coredoexnull���     ****�� � *�b   /j U� ������������� 0 savesettings saveSettings�� ����� �  �������������� 0 	targetapp 	targetApp��  0 appprocessname appProcessName�� 0 widthpercent widthPercent�� 0 heightpercent heightPercent�� 0 horizontalpos horizontalPos�� 0 verticalpos verticalPos��  � ������������������ 0 	targetapp 	targetApp��  0 appprocessname appProcessName�� 0 widthpercent widthPercent�� 0 heightpercent heightPercent�� 0 horizontalpos horizontalPos�� 0 verticalpos verticalPos�� 0 	plistdict 	plistDict�� 0 theplist thePlist� ����������������������������������������� 0 	targetApp  �� 0 appProcessName  �� 0 widthPercent  �� 0 heightPercent  �� 0 horizontalPos  �� 0 verticalPos  �� 
�� 
kocl
�� 
plif
�� 
prdt
�� 
pnam�� 
�� .corecrel****      � null
�� 
plii
�� 
insh
�� 
kind
�� 
reco
�� 
valL�� �� P�������E�O� ;*����b   l� E�O��- !*���*6�a a �a a �a a  UU� ������������ 0 loadsettings loadSettings��  ��  � �������� 0 theplist thePlist�� 0 settingsitem settingsItem�� 0 settingsdict settingsDict� O����!��������������������[_����gj
�� 
plif
�� 
plii
�� 
valL�� 0 	targetApp  �� 0 appProcessName  �� 0 widthPercent  �� 0 heightPercent  �� 0 horizontalPos  �� 0 verticalPos  �� ��  ��  �� <�� Z�� a C� ;*�b   /E�O���/E�O��,E�O��,E��,E��,E��,E��,E��,E�UW X  �����a �a �a �a �� ��v���������� &0 positionappwindow positionAppWindow�� ����� �  �������������� 0 	targetapp 	targetApp��  0 appprocessname appProcessName�� 0 widthpercent widthPercent�� 0 heightpercent heightPercent�� 0 horizontalpos horizontalPos�� 0 verticalpos verticalPos��  � ���������������������������� 0 	targetapp 	targetApp��  0 appprocessname appProcessName�� 0 widthpercent widthPercent�� 0 heightpercent heightPercent�� 0 horizontalpos horizontalPos�� 0 verticalpos verticalPos�� 0 screenwidth screenWidth�� 0 screenheight screenHeight�� 0 windowwidth windowWidth�� 0 windowheight windowHeight�� 0 	xposition 	xPosition�� 0 	yposition 	yPosition�� 0 errormsg errorMsg� #����������������������v����������W�]�~`�}�|hjps�{|��
�� 
capp
�� .miscactvnull��� ��� null
�� .sysodelanull��� ��� nmbr�� *0 getscreendimensions getScreenDimensions
�� 
cobj��  ��  �����8�� d
�� 
prcs
�� 
cwin
�� .corecnte****       ****
�� 
posn
�� 
ptsz
� 
btns
�~ 
dflt�} 
�| .sysodlogaskr        TEXT�{ 0 errormsg errorMsg��&*�/ *j Olj UO *j+ E[�k/E�Z[�l/E�ZW X  �E�O�E�O�� �!E�O�� �!E�O��  jE�Y ��  
��E�Y 	��l!E�O��  jE�Y ��  
��E�Y 	��l!E�O w� o*�/ g*a -j j <*a k/ ��lv*a ,FO��lv*a ,FUOa a a kva a a  Y a �%a %a a kva a a  UUW  X  a  �%a a !kva a "a  � �z��y�x���w�z *0 getscreendimensions getScreenDimensions�y  �x  � �v�v 0 _bounds  � ��u�t�s�r�q
�u 
desk
�t 
cwin
�s 
pbnd
�r 
cobj�q �w � *�,�,�,E�O��m/E���/ElvUascr  ��ޭ