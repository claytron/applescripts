FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ZT
"Play Album Next In Party Shuffle" for iTunes
written by Doug Adams
dougadams@mac.com

modified by claytron
robots@claytron.com

v1.2 october 4 2008
- modified to add multiple albums from selection [claytron]

v1.1 july 16 2006
- fixes error with a variable name

v1.0 may 19 2006
-- initial release

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://www.dougscripts.com/itunes/

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html
     � 	 	� 
 " P l a y   A l b u m   N e x t   I n   P a r t y   S h u f f l e "   f o r   i T u n e s 
 w r i t t e n   b y   D o u g   A d a m s 
 d o u g a d a m s @ m a c . c o m 
 
 m o d i f i e d   b y   c l a y t r o n 
 r o b o t s @ c l a y t r o n . c o m 
 
 v 1 . 2   o c t o b e r   4   2 0 0 8 
 -   m o d i f i e d   t o   a d d   m u l t i p l e   a l b u m s   f r o m   s e l e c t i o n   [ c l a y t r o n ] 
 
 v 1 . 1   j u l y   1 6   2 0 0 6 
 -   f i x e s   e r r o r   w i t h   a   v a r i a b l e   n a m e 
 
 v 1 . 0   m a y   1 9   2 0 0 6 
 - -   i n i t i a l   r e l e a s e 
 
 G e t   m o r e   f r e e   A p p l e S c r i p t s   a n d   i n f o   o n   w r i t i n g   y o u r   o w n 
 a t   D o u g ' s   A p p l e S c r i p t s   f o r   i T u n e s 
 h t t p : / / w w w . d o u g s c r i p t s . c o m / i t u n e s / 
 
 T h i s   p r o g r a m   i s   f r e e   s o f t w a r e ;   y o u   c a n   r e d i s t r i b u t e   i t   a n d / o r   m o d i f y   i t   u n d e r   t h e   t e r m s   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   a s   p u b l i s h e d   b y   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ;   e i t h e r   v e r s i o n   2   o f   t h e   L i c e n s e ,   o r   ( a t   y o u r   o p t i o n )   a n y   l a t e r   v e r s i o n . 
 
 T h i s   p r o g r a m   i s   d i s t r i b u t e d   i n   t h e   h o p e   t h a t   i t   w i l l   b e   u s e f u l ,   b u t   W I T H O U T   A N Y   W A R R A N T Y ;   w i t h o u t   e v e n   t h e   i m p l i e d   w a r r a n t y   o f   M E R C H A N T A B I L I T Y   o r   F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E .     S e e   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   f o r   m o r e   d e t a i l s . 
 
 G e t   a   c o p y   o f   t h e   G N U   G e n e r a l   P u b l i c   L i c e n s e   b y   w r i t i n g   t o   t h e   F r e e   S o f t w a r e   F o u n d a t i o n ,   I n c . ,   5 1   F r a n k l i n   S t r e e t ,   F i f t h   F l o o r ,   B o s t o n ,   M A     0 2 1 1 0 - 1 3 0 1 ,   U S A . 
 
 o r   v i s i t   h t t p : / / w w w . g n u . o r g / c o p y l e f t / g p l . h t m l 
   
  
 l     ��������  ��  ��        l   H ����  O    H    Z   G  ��   F        =   	    1    ��
�� 
pPlS  m    ��
�� ePlSkPSP  =       n        1    ��
�� 
pSpK  1    ��
�� 
pPla  m    ��
�� eSpKkSpS  k          l   ��������  ��  ��         Z    ! "�� # ! >    $ % $ 1    ��
�� 
sele % J    ����   " k   ! & &  ' ( ' l  ! !�� ) *��   ) : 4 in case a lot of items are selected use a reference    * � + + h   i n   c a s e   a   l o t   o f   i t e m s   a r e   s e l e c t e d   u s e   a   r e f e r e n c e (  , - , r   ! ' . / . N   ! % 0 0 1   ! $��
�� 
sele / o      ���� 0 sel   -  1 2 1 l  ( (�� 3 4��   3 4 . get a list of all the albums in the selection    4 � 5 5 \   g e t   a   l i s t   o f   a l l   t h e   a l b u m s   i n   t h e   s e l e c t i o n 2  6 7 6 r   ( , 8 9 8 J   ( *����   9 o      ���� 0 
album_list   7  : ; : X   - X <�� = < k   = S > >  ? @ ? r   = C A B A e   = A C C n   = A D E D 1   > @��
�� 
pAlb E o   = >���� 0 
this_track   B o      ���� 0 selected_album   @  F G F l  D D�� H I��   H 7 1 only add to the list if the album is not present    I � J J b   o n l y   a d d   t o   t h e   l i s t   i f   t h e   a l b u m   i s   n o t   p r e s e n t G  K�� K Z   D S L M���� L H   D H N N E  D G O P O o   D E���� 0 
album_list   P o   E F���� 0 selected_album   M s   K O Q R Q o   K L���� 0 selected_album   R l      S���� S n       T U T  ;   M N U o   L M���� 0 
album_list  ��  ��  ��  ��  ��  �� 0 
this_track   = o   0 1���� 0 sel   ;  V W V l  Y Y��������  ��  ��   W  X Y X X   Y � Z�� [ Z k   i � \ \  ] ^ ] l  i i�� _ `��   _ "  get all tracks of the Album    ` � a a 8   g e t   a l l   t r a c k s   o f   t h e   A l b u m ^  b c b r   i � d e d l  i } f���� f e   i } g g 6  i } h i h n   i q j k j 2   m q��
�� 
cTrk k 4   i m�� l
�� 
cLiP l m   k l����  i =  t { m n m 1   u w��
�� 
pAlb n o   x z���� 0 chosen_album  ��  ��   e o      ���� 0 these_album_tracks   c  o p o l  � ���������  ��  ��   p  q r q l  � ��� s t��   s ( " put the tracks into Party Shuffle    t � u u D   p u t   t h e   t r a c k s   i n t o   P a r t y   S h u f f l e r  v w v l  � ��� x y��   x e _ first delete tracks if they are already in Party Shuffle...otherwise they will not be re-added    y � z z �   f i r s t   d e l e t e   t r a c k s   i f   t h e y   a r e   a l r e a d y   i n   P a r t y   S h u f f l e . . . o t h e r w i s e   t h e y   w i l l   n o t   b e   r e - a d d e d w  { | { I  � ��� }��
�� .coredelonull���    obj  } l  � � ~���� ~ 6  � �  �  n   � � � � � 2   � ���
�� 
cTrk � 1   � ���
�� 
pPla � F   � � � � � =  � � � � � 1   � ���
�� 
pAlb � o   � ����� 0 chosen_album   � ?   � � � � � 1   � ���
�� 
pidx � l  � � ����� � e   � � � � n   � � � � � 1   � ���
�� 
pidx � 1   � ���
�� 
pTrk��  ��  ��  ��  ��   |  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   now the business    � � � � "   n o w   t h e   b u s i n e s s �  � � � r   � � � � � l  � � ����� � e   � � � � n   � � � � � 1   � ���
�� 
pDID � 1   � ���
�� 
pTrk��  ��   � o      ���� 0 dbid   �  ��� � X   � � ��� � � l  � � � � � � Z  � � � ����� � >  � � � � � l  � � ����� � e   � � � � n   � � � � � 1   � ���
�� 
pDID � o   � ����� 0 
this_track  ��  ��   � o   � ����� 0 dbid   � n  � � � � � I   � ��� ����� 0 play_next_in_ps   �  ��� � o   � ����� 0 
this_track  ��  ��   �  f   � ���  ��   � 3 - don't re-add if a track is the current track    � � � � Z   d o n ' t   r e - a d d   i f   a   t r a c k   i s   t h e   c u r r e n t   t r a c k�� 0 
this_track   � n   � � � � � 1   � ���
�� 
rvse � n  � � � � � I   � ��� ����� !0 tracks_sorted_by_track_number   �  ��� � o   � ����� 0 these_album_tracks  ��  ��   �  f   � ���  �� 0 chosen_album   [ o   \ ]���� 0 
album_list   Y  � � � l  � ���������  ��  ��   �  ��� � r   � � � � 4   ��� �
�� 
cPly � m   � � � � � �  P a r t y   S h u f f l e � n       � � � 1  ��
�� 
pPly � 4 �� �
�� 
cBrW � m  ���� ��  ��   # I �� ���
�� .sysodlogaskr        TEXT � m   � � � � � b N o   t r a c k s   s e l e c t e d ,   s e l e c t   t r a c k ( s )   a n d   t r y   a g a i n��      ��� � l ��������  ��  ��  ��  ��    Q  G � ��� � k  > � �  � � � l �� � ���   � 2 , XXX i wish this wasn't necessary - claytron    � � � � X   X X X   i   w i s h   t h i s   w a s n ' t   n e c e s s a r y   -   c l a y t r o n �  ��� � I >�� � �
�� .sysodlogaskr        TEXT � m  " � � � � � � T h e   P a r t y   S h u f f l e   p l a y l i s t   m u s t   b e   p l a y i n g   b e f o r e   a d d i n g   n e w   t r a c k s   t o   i t . . . � �� � �
�� 
btns � J  %* � �  ��� � m  %( � � � � �  C a n c e l��   � �� � �
�� 
dflt � m  -.����  � �� � �
�� 
disp � m  12����  � �� ���
�� 
givu � m  58���� ��  ��   � R      �����
�� .ascrerr ****      � ****��  �  ��    m      � ��                                                                                  hook   alis    2  WMS                        ĹJ�H+     �
iTunes.app                                                      U0�0�        ����  	                Applications    Ĺ�>      �i1       �  WMS:Applications:iTunes.app    
 i T u n e s . a p p    W M S  Applications/iTunes.app   / ��  ��  ��     � � � l     �~�}�|�~  �}  �|   �  � � � l     �{�z�y�{  �z  �y   �  � � � l     �x � ��x   � &   sort the tracks by track number    � � � � @   s o r t   t h e   t r a c k s   b y   t r a c k   n u m b e r �  � � � l     �w � ��w   � , & routine based on Apple's "ASCII_Sort"    � � � � L   r o u t i n e   b a s e d   o n   A p p l e ' s   " A S C I I _ S o r t " �  � � � l     �v � ��v   � F @ http://www.apple.com/applescript/guidebook/sbrt/pgs/sbrt.05.htm    � � � � �   h t t p : / / w w w . a p p l e . c o m / a p p l e s c r i p t / g u i d e b o o k / s b r t / p g s / s b r t . 0 5 . h t m �  � � � i      � � � I      �u ��t�u !0 tracks_sorted_by_track_number   �  ��s � o      �r�r 0 these_tracks  �s  �t   � k     � � �  � � � O     � � � � k     � �  � � � r     � � � J    �q�q   � o      �p�p 0 sorted_list   �    r   	  J   	 �o�o   o      �n�n 0 
index_list    r     l   �m�l I   �k	�j
�k .corecnte****       ****	 o    �i�i 0 these_tracks  �j  �m  �l   o      �h�h 0 count_of_tracks   
�g
 U     k    z  r      m     �   l     �f�e o      �d�d 0 low_item  �f  �e    Y   ! p�c�b Z   + k�a�` H   + / E  + . l  + ,�_�^ o   + ,�]�] 0 
index_list  �_  �^   o   , -�\�\ 0 i   k   2 g   !"! r   2 8#$# n   2 6%&% 4   3 6�['
�[ 
cobj' o   4 5�Z�Z 0 i  & o   2 3�Y�Y 0 these_tracks  $ o      �X�X 0 
this_track  " ()( r   9 ?*+* n   9 =,-, 4   : =�W.
�W 
cobj. o   ; <�V�V 0 i  - o   9 :�U�U 0 these_tracks  + o      �T�T 0 	this_item  ) /�S/ Z   @ g012�R0 =  @ C343 l  @ A5�Q�P5 o   @ A�O�O 0 low_item  �Q  �P  4 m   A B66 �77  1 k   F M88 9:9 r   F I;<; o   F G�N�N 0 	this_item  < l     =�M�L= o      �K�K 0 low_item  �M  �L  : >�J> r   J M?@? o   J K�I�I 0 i  @ l     A�H�GA o      �F�F 0 low_item_index  �H  �G  �J  2 BCB A   P YDED l  P TF�E�DF e   P TGG n  P THIH 1   Q S�C
�C 
pTrNI o   P Q�B�B 0 	this_item  �E  �D  E l  T XJ�A�@J e   T XKK n  T XLML 1   U W�?
�? 
pTrNM o   T U�>�> 0 low_item  �A  �@  C N�=N k   \ cOO PQP r   \ _RSR o   \ ]�<�< 0 	this_item  S l     T�;�:T o      �9�9 0 low_item  �;  �:  Q U�8U r   ` cVWV o   ` a�7�7 0 i  W l     X�6�5X o      �4�4 0 low_item_index  �6  �5  �8  �=  �R  �S  �a  �`  �c 0 i   m   $ %�3�3  o   % &�2�2 0 count_of_tracks  �b   YZY r   q u[\[ l  q r]�1�0] o   q r�/�/ 0 low_item  �1  �0  \ l     ^�.�-^ n      _`_  ;   s t` o   r s�,�, 0 sorted_list  �.  �-  Z a�+a r   v zbcb l  v wd�*�)d o   v w�(�( 0 low_item_index  �*  �)  c l     e�'�&e n      fgf  ;   x yg l  w xh�%�$h o   w x�#�# 0 
index_list  �%  �$  �'  �&  �+   o    �"�" 0 count_of_tracks  �g   � m     ii�                                                                                  hook   alis    2  WMS                        ĹJ�H+     �
iTunes.app                                                      U0�0�        ����  	                Applications    Ĺ�>      �i1       �  WMS:Applications:iTunes.app    
 i T u n e s . a p p    W M S  Applications/iTunes.app   / ��   � j�!j L   � �kk o   � �� �  0 sorted_list  �!   � lml l     ����  �  �  m non l     ����  �  �  o pqp l     �rs�  r J D based on routine written by J Nicholas Jitkoff, Blacktree.com, also   s �tt �   b a s e d   o n   r o u t i n e   w r i t t e n   b y   J   N i c h o l a s   J i t k o f f ,   B l a c k t r e e . c o m ,   a l s oq uvu l     �wx�  w E ? http://www.macosxhints.com/article.php?story=20040830035448525   x �yy ~   h t t p : / / w w w . m a c o s x h i n t s . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 4 0 8 3 0 0 3 5 4 4 8 5 2 5v z{z i    |}| I      �~�� 0 play_next_in_ps  ~ � o      �� 0 t  �  �  } O     T��� k    S�� ��� r    ��� 6   ��� 3    �
� 
cPly� =   ��� 1   	 �
� 
pSpK� m    �
� eSpKkSpS� o      �� 0 p  � ��� r    ��� n    ��� 1    �
� 
pidx� 1    �
� 
pTrk� o      �� 0 i  � ��� O    S��� k    R�� ��� r    >��� N    <�� l   ;���
� 6   ;��� 2    "�	
�	 
cTrk� F   # :��� ?   $ +��� 1   % '�
� 
pidx� o   ( *�� 0 i  � B  , 9��� 1   - /�
� 
pidx� l  0 8���� I  0 8���
� .corecnte****       ****� 2  1 4�
� 
cTrk�  �  �  �  �
  � o      � �  0 ts  � ��� I  ? F����
�� .coreclon****      � ****� o   ? @���� 0 t  � �����
�� 
insh� o   A B���� 0 p  ��  � ��� I  G L�����
�� .coreclon****      � ****� o   G H���� 0 ts  ��  � ���� I  M R�����
�� .coredelonull���    obj � o   M N���� 0 ts  ��  ��  � o    ���� 0 p  �  � m     ���                                                                                  hook   alis    2  WMS                        ĹJ�H+     �
iTunes.app                                                      U0�0�        ����  	                Applications    Ĺ�>      �i1       �  WMS:Applications:iTunes.app    
 i T u n e s . a p p    W M S  Applications/iTunes.app   / ��  { ���� l     ��������  ��  ��  ��       ��������  � �������� !0 tracks_sorted_by_track_number  �� 0 play_next_in_ps  
�� .aevtoappnull  �   � ****� �� ����������� !0 tracks_sorted_by_track_number  �� ����� �  ���� 0 these_tracks  ��  � 	�������������������� 0 these_tracks  �� 0 sorted_list  �� 0 
index_list  �� 0 count_of_tracks  �� 0 low_item  �� 0 i  �� 0 
this_track  �� 0 	this_item  �� 0 low_item_index  � i����6��
�� .corecnte****       ****
�� 
cobj
�� 
pTrN�� �� }jvE�OjvE�O�j E�O h�kh�E�O Nk�kh �� :��/E�O��/E�O��  �E�O�E�Y ��,E��,E �E�O�E�Y hY h[OY��O��6FO��6F[OY��UO�� ��}���������� 0 play_next_in_ps  �� ����� �  ���� 0 t  ��  � ���������� 0 t  �� 0 p  �� 0 i  �� 0 ts  � ����������������������
�� 
cPly�  
�� 
pSpK
�� eSpKkSpS
�� 
pTrk
�� 
pidx
�� 
cTrk
�� .corecnte****       ****
�� 
insh
�� .coreclon****      � ****
�� .coredelonull���    obj �� U� Q*�.�[�,\Z�81E�O*�,�,E�O� 5*�-�[[�,\Z�:\[�,\Z*�-j =A1E�O��l 
O�j 
O�j UU� �����������
�� .aevtoappnull  �   � ****� k    H��  ����  ��  ��  � ������ 0 
this_track  �� 0 chosen_album  � + ������������������������������������������������������ ����� ��� ��� ���������������
�� 
pPlS
�� ePlSkPSP
�� 
pPla
�� 
pSpK
�� eSpKkSpS
�� 
bool
�� 
sele�� 0 sel  �� 0 
album_list  
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
pAlb�� 0 selected_album  
�� 
cLiP
�� 
cTrk�� 0 these_album_tracks  
�� 
pidx
�� 
pTrk
�� .coredelonull���    obj 
�� 
pDID�� 0 dbid  �� !0 tracks_sorted_by_track_number  
�� 
rvse�� 0 play_next_in_ps  
�� 
cPly
�� 
cBrW
�� 
pPly
�� .sysodlogaskr        TEXT
�� 
btns
�� 
dflt
�� 
disp
�� 
givu�� �� ��  ��  ��I�E*�,� 	 *�,�,� �&*�,jv �*�,E�OjvE�O *�[��l kh  ��,EE�O�� 	��6GY h[OY��O ��[��l kh *�k/a -a [�,\Z�81EE` O*�,a -a [[�,\Z�8\[a ,\Z*a ,a ,E:A1j O*a ,a ,EE` O 6)_ k+ a ,[��l kh  �a ,E_  )�k+ Y h[OY��[OY�oO*a a /*a k/a ,FY 	a j  OPY - $a !a "a #kva $ka %la &a 'a (  W X ) *hU ascr  ��ޭ