FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
"Add Album to Party Shuffle" for iTunes
adapted by claytron
robots@claytron.com

Based on "Play Album Next In Party Shuffle"
written by Doug Adams
dougadams@mac.com

v1.2 october 23 2008
- initial release

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://www.dougscripts.com/itunes/

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html
     � 	 	� 
 " A d d   A l b u m   t o   P a r t y   S h u f f l e "   f o r   i T u n e s 
 a d a p t e d   b y   c l a y t r o n 
 r o b o t s @ c l a y t r o n . c o m 
 
 B a s e d   o n   " P l a y   A l b u m   N e x t   I n   P a r t y   S h u f f l e " 
 w r i t t e n   b y   D o u g   A d a m s 
 d o u g a d a m s @ m a c . c o m 
 
 v 1 . 2   o c t o b e r   2 3   2 0 0 8 
 -   i n i t i a l   r e l e a s e 
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
 l     ��������  ��  ��        l   > ����  O    >    Z   =  ��   F        =   	    1    ��
�� 
pPlS  m    ��
�� ePlSkPSP  =       n        1    ��
�� 
pSpK  1    ��
�� 
pPla  m    ��
�� eSpKkSpS  k          l   ��������  ��  ��         Z    ! "�� # ! >    $ % $ 1    ��
�� 
sele % J    ����   " k   ! & &  ' ( ' l  ! !�� ) *��   ) : 4 in case a lot of items are selected use a reference    * � + + h   i n   c a s e   a   l o t   o f   i t e m s   a r e   s e l e c t e d   u s e   a   r e f e r e n c e (  , - , r   ! ' . / . N   ! % 0 0 1   ! $��
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
pTrk��  ��  ��  ��  ��   |  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   now the business    � � � � "   n o w   t h e   b u s i n e s s �  � � � r   � � � � � l  � � ����� � 6  � � � � � 3   � ���
�� 
cPly � =  � � � � � 1   � ���
�� 
pSpK � m   � ���
�� eSpKkSpS��  ��   � o      ���� 0 p   �  ��� � X   � � ��� � � I  � ��� � �
�� .coreclon****      � **** � o   � ����� 0 
this_track   � �� ���
�� 
insh � o   � ����� 0 p  ��  �� 0 
this_track   � n  � � � � � I   � ��� ����� !0 tracks_sorted_by_track_number   �  ��� � o   � ����� 0 these_album_tracks  ��  ��   �  f   � ���  �� 0 chosen_album   [ o   \ ]���� 0 
album_list   Y  � � � l  � ���������  ��  ��   �  ��� � r   � � � � 4   � ��� �
�� 
cPly � m   � � � � � � �  P a r t y   S h u f f l e � n       � � � 1   ���
�� 
pPly � 4  � ��� �
�� 
cBrW � m   � ����� ��  ��   # I �� ���
�� .sysodlogaskr        TEXT � m  	 � � � � � b N o   t r a c k s   s e l e c t e d ,   s e l e c t   t r a c k ( s )   a n d   t r y   a g a i n��      ��� � l ��������  ��  ��  ��  ��    Q  = � ��� � k  4 � �  � � � l �� � ���   � 2 , XXX i wish this wasn't necessary - claytron    � � � � X   X X X   i   w i s h   t h i s   w a s n ' t   n e c e s s a r y   -   c l a y t r o n �  ��� � I 4�� � �
�� .sysodlogaskr        TEXT � m   � � � � � � T h e   P a r t y   S h u f f l e   p l a y l i s t   m u s t   b e   p l a y i n g   b e f o r e   a d d i n g   n e w   t r a c k s   t o   i t . . . � �� � �
�� 
btns � J    � �  ��� � m   � � � � �  C a n c e l��   � �� � �
�� 
dflt � m  #$����  � �� � �
�� 
disp � m  '(����  � �� ���
�� 
givu � m  +.���� ��  ��   � R      ������
�� .ascrerr ****      � ****��  ��  ��    m      � ��                                                                                  hook   alis    2  WMS                        ĹJ�H+     �
iTunes.app                                                      U0�0�        ����  	                Applications    Ĺ�>      �i1       �  WMS:Applications:iTunes.app    
 i T u n e s . a p p    W M S  Applications/iTunes.app   / ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     �������  ��  �   �  � � � l     �~ � ��~   � &   sort the tracks by track number    � � � � @   s o r t   t h e   t r a c k s   b y   t r a c k   n u m b e r �  � � � l     �} � ��}   � , & routine based on Apple's "ASCII_Sort"    � � � � L   r o u t i n e   b a s e d   o n   A p p l e ' s   " A S C I I _ S o r t " �  � � � l     �| � ��|   � F @ http://www.apple.com/applescript/guidebook/sbrt/pgs/sbrt.05.htm    � � � � �   h t t p : / / w w w . a p p l e . c o m / a p p l e s c r i p t / g u i d e b o o k / s b r t / p g s / s b r t . 0 5 . h t m �  � � � i      � � � I      �{ ��z�{ !0 tracks_sorted_by_track_number   �  ��y � o      �x�x 0 these_tracks  �y  �z   � k     � � �  � � � O     � � � � k     � �  � � � r     � � � J    �w�w   � o      �v�v 0 sorted_list   �  � � � r   	  � � � J   	 �u�u   � o      �t�t 0 
index_list   �  � � � r     � � � l    ��s�r � I   �q ��p
�q .corecnte****       **** � o    �o�o 0 these_tracks  �p  �s  �r   � o      �n�n 0 count_of_tracks   �  ��m � U     � � � k    z � �    r      m     �   l     �l�k o      �j�j 0 low_item  �l  �k    Y   ! p	�i
�h	 Z   + k�g�f H   + / E  + . l  + ,�e�d o   + ,�c�c 0 
index_list  �e  �d   o   , -�b�b 0 i   k   2 g  r   2 8 n   2 6 4   3 6�a
�a 
cobj o   4 5�`�` 0 i   o   2 3�_�_ 0 these_tracks   o      �^�^ 0 
this_track    r   9 ? n   9 = 4   : =�] 
�] 
cobj  o   ; <�\�\ 0 i   o   9 :�[�[ 0 these_tracks   o      �Z�Z 0 	this_item   !�Y! Z   @ g"#$�X" =  @ C%&% l  @ A'�W�V' o   @ A�U�U 0 low_item  �W  �V  & m   A B(( �))  # k   F M** +,+ r   F I-.- o   F G�T�T 0 	this_item  . l     /�S�R/ o      �Q�Q 0 low_item  �S  �R  , 0�P0 r   J M121 o   J K�O�O 0 i  2 l     3�N�M3 o      �L�L 0 low_item_index  �N  �M  �P  $ 454 A   P Y676 l  P T8�K�J8 e   P T99 n  P T:;: 1   Q S�I
�I 
pTrN; o   P Q�H�H 0 	this_item  �K  �J  7 l  T X<�G�F< e   T X== n  T X>?> 1   U W�E
�E 
pTrN? o   T U�D�D 0 low_item  �G  �F  5 @�C@ k   \ cAA BCB r   \ _DED o   \ ]�B�B 0 	this_item  E l     F�A�@F o      �?�? 0 low_item  �A  �@  C G�>G r   ` cHIH o   ` a�=�= 0 i  I l     J�<�;J o      �:�: 0 low_item_index  �<  �;  �>  �C  �X  �Y  �g  �f  �i 0 i  
 m   $ %�9�9  o   % &�8�8 0 count_of_tracks  �h   KLK r   q uMNM l  q rO�7�6O o   q r�5�5 0 low_item  �7  �6  N l     P�4�3P n      QRQ  ;   s tR o   r s�2�2 0 sorted_list  �4  �3  L S�1S r   v zTUT l  v wV�0�/V o   v w�.�. 0 low_item_index  �0  �/  U l     W�-�,W n      XYX  ;   x yY l  w xZ�+�*Z o   w x�)�) 0 
index_list  �+  �*  �-  �,  �1   � o    �(�( 0 count_of_tracks  �m   � m     [[�                                                                                  hook   alis    2  WMS                        ĹJ�H+     �
iTunes.app                                                      U0�0�        ����  	                Applications    Ĺ�>      �i1       �  WMS:Applications:iTunes.app    
 i T u n e s . a p p    W M S  Applications/iTunes.app   / ��   � \�'\ L   � �]] o   � ��&�& 0 sorted_list  �'   � ^�%^ l     �$�#�"�$  �#  �"  �%       �!_`a�!  _ � ��  !0 tracks_sorted_by_track_number  
� .aevtoappnull  �   � ****` � ���bc�� !0 tracks_sorted_by_track_number  � �d� d  �� 0 these_tracks  �  b 	���������� 0 these_tracks  � 0 sorted_list  � 0 
index_list  � 0 count_of_tracks  � 0 low_item  � 0 i  � 0 
this_track  � 0 	this_item  � 0 low_item_index  c [��(�
� .corecnte****       ****
� 
cobj
� 
pTrN� �� }jvE�OjvE�O�j E�O h�kh�E�O Nk�kh �� :��/E�O��/E�O��  �E�O�E�Y ��,E��,E �E�O�E�Y hY h[OY��O��6FO��6F[OY��UO�a �e��
fg�	
� .aevtoappnull  �   � ****e k    >hh  ��  �  �
  f ��� 0 
this_track  � 0 chosen_album  g * ������� ��������������������i������������������ ����� ��� ��� ���������������
� 
pPlS
� ePlSkPSP
� 
pPla
� 
pSpK
� eSpKkSpS
�  
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
cTrki  �� 0 these_album_tracks  
�� 
pidx
�� 
pTrk
�� .coredelonull���    obj 
�� 
cPly�� 0 p  �� !0 tracks_sorted_by_track_number  
�� 
insh
�� .coreclon****      � ****
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
givu�� �� ��  ��  �	?�;*�,� 	 *�,�,� �& �*�,jv �*�,E�OjvE�O *�[��l kh  ��,EE�O�� 	��6GY h[OY��O ��[��l kh *�k/a -a [�,\Z�81EE` O*�,a -a [[�,\Z�8\[a ,\Z*a ,a ,E:A1j O*a .a [�,\Z�81E` O &)_ k+ [��l kh  �a _ l [OY��[OY�yO*a a /*a k/a ,FY 	a j OPY - $a  a !a "kva #ka $la %a &a ' W X ( )hUascr  ��ޭ