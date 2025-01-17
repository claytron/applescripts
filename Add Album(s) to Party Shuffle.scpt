FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
"Add Album to Party Shuffle" for iTunes
adapted by claytron
robots@claytron.com

Based on "Play Album Next In Party Shuffle"
written by Doug Adams
dougadams@mac.com

v1.3 January 24 2009
- fixed up the "tracks_sorted_by_track_number" to take care of multiple discs.  If the disc count is not set it is assumed that it is "1 of 1".

v1.2 October 23 2008
- initial release

Get more free AppleScripts and info on writing your own
at Doug's AppleScripts for iTunes
http://www.dougscripts.com/itunes/

This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.

This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.

Get a copy of the GNU General Public License by writing to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

or visit http://www.gnu.org/copyleft/gpl.html
     � 	 		6 
 " A d d   A l b u m   t o   P a r t y   S h u f f l e "   f o r   i T u n e s 
 a d a p t e d   b y   c l a y t r o n 
 r o b o t s @ c l a y t r o n . c o m 
 
 B a s e d   o n   " P l a y   A l b u m   N e x t   I n   P a r t y   S h u f f l e " 
 w r i t t e n   b y   D o u g   A d a m s 
 d o u g a d a m s @ m a c . c o m 
 
 v 1 . 3   J a n u a r y   2 4   2 0 0 9 
 -   f i x e d   u p   t h e   " t r a c k s _ s o r t e d _ b y _ t r a c k _ n u m b e r "   t o   t a k e   c a r e   o f   m u l t i p l e   d i s c s .     I f   t h e   d i s c   c o u n t   i s   n o t   s e t   i t   i s   a s s u m e d   t h a t   i t   i s   " 1   o f   1 " . 
 
 v 1 . 2   O c t o b e r   2 3   2 0 0 8 
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
 l     ��������  ��  ��        l     ��  ��    P J Choose to bring the party shuffle to the front after adding tracks to it.     �   �   C h o o s e   t o   b r i n g   t h e   p a r t y   s h u f f l e   t o   t h e   f r o n t   a f t e r   a d d i n g   t r a c k s   t o   i t .      j     �� �� 0 show_party_shuffle    m     ��
�� boovtrue      l     ��������  ��  ��        l    � ����  O     �    Z    �  ��   >   
    1    ��
�� 
sele  J    	����    k    �      ! " ! l   �� # $��   # : 4 in case a lot of items are selected use a reference    $ � % % h   i n   c a s e   a   l o t   o f   i t e m s   a r e   s e l e c t e d   u s e   a   r e f e r e n c e "  & ' & r     ( ) ( N     * * 1    ��
�� 
sele ) o      ���� 0 sel   '  + , + l   �� - .��   - 4 . get a list of all the albums in the selection    . � / / \   g e t   a   l i s t   o f   a l l   t h e   a l b u m s   i n   t h e   s e l e c t i o n ,  0 1 0 r     2 3 2 J    ����   3 o      ���� 0 
album_list   1  4 5 4 X    D 6�� 7 6 k   ) ? 8 8  9 : 9 r   ) / ; < ; e   ) - = = n   ) - > ? > 1   * ,��
�� 
pAlb ? o   ) *���� 0 
this_track   < o      ���� 0 selected_album   :  @ A @ l  0 0�� B C��   B 7 1 only add to the list if the album is not present    C � D D b   o n l y   a d d   t o   t h e   l i s t   i f   t h e   a l b u m   i s   n o t   p r e s e n t A  E�� E Z   0 ? F G���� F H   0 4 H H E  0 3 I J I o   0 1���� 0 
album_list   J o   1 2���� 0 selected_album   G s   7 ; K L K o   7 8���� 0 selected_album   L l      M���� M n       N O N  ;   9 : O o   8 9���� 0 
album_list  ��  ��  ��  ��  ��  �� 0 
this_track   7 o    ���� 0 sel   5  P Q P l  E E��������  ��  ��   Q  R S R X   E � T�� U T k   U � V V  W X W l  U U�� Y Z��   Y "  get all tracks of the Album    Z � [ [ 8   g e t   a l l   t r a c k s   o f   t h e   A l b u m X  \ ] \ r   U g ^ _ ^ l  U e `���� ` e   U e a a 6  U e b c b n   U [ d e d 2   Y [��
�� 
cTrk e 4   U Y�� f
�� 
cLiP f m   W X����  c =  \ c g h g 1   ] _��
�� 
pAlb h o   ` b���� 0 chosen_album  ��  ��   _ o      ���� 0 these_album_tracks   ]  i j i l  h h��������  ��  ��   j  k l k l  h h�� m n��   m ( " put the tracks into Party Shuffle    n � o o D   p u t   t h e   t r a c k s   i n t o   P a r t y   S h u f f l e l  p q p r   h x r s r l  h t t���� t 6  h t u v u 3   h k��
�� 
cPly v =  l s w x w 1   m o��
�� 
pSpK x m   p r��
�� eSpKkSpS��  ��   s o      ���� 0 p   q  y�� y X   y � z�� { z I  � ��� | }
�� .coreclon****      � **** | o   � ����� 0 
this_track   } �� ~��
�� 
insh ~ o   � ����� 0 p  ��  �� 0 
this_track   { n  | �  �  I   } ��� ����� !0 tracks_sorted_by_track_number   �  ��� � o   } ~���� 0 these_album_tracks  ��  ��   �  f   | }��  �� 0 chosen_album   U o   H I���� 0 
album_list   S  ��� � Z   � � � ����� � o   � ����� 0 show_party_shuffle   � r   � � � � � 4   � ��� �
�� 
cPly � m   � � � � � � �  P a r t y   S h u f f l e � n       � � � 1   � ���
�� 
pPly � 4  � ��� �
�� 
cBrW � m   � ����� ��  ��  ��  ��    I  � ��� ���
�� .sysodlogaskr        TEXT � m   � � � � � � � b N o   t r a c k s   s e l e c t e d ,   s e l e c t   t r a c k ( s )   a n d   t r y   a g a i n��    m      � ��                                                                                  hook   alis    2  WMS                        ĹJ�H+     �
iTunes.app                                                      U0�0�        ����  	                Applications    Ĺ�>      �i1       �  WMS:Applications:iTunes.app    
 i T u n e s . a p p    W M S  Applications/iTunes.app   / ��  ��  ��     � � � l     ��������  ��  ��   �  � � � l     �� � ���   � &   sort the tracks by track number    � � � � @   s o r t   t h e   t r a c k s   b y   t r a c k   n u m b e r �  � � � l     �� � ���   � , & routine based on Apple's "ASCII_Sort"    � � � � L   r o u t i n e   b a s e d   o n   A p p l e ' s   " A S C I I _ S o r t " �  � � � l     �� � ���   � F @ http://www.apple.com/applescript/guidebook/sbrt/pgs/sbrt.05.htm    � � � � �   h t t p : / / w w w . a p p l e . c o m / a p p l e s c r i p t / g u i d e b o o k / s b r t / p g s / s b r t . 0 5 . h t m �  � � � i     � � � I      �� ����� !0 tracks_sorted_by_track_number   �  ��� � o      ���� 0 these_tracks  ��  ��   � O     � � � � k    � � �  � � � r     � � � J    ����   � o      ���� 0 sorted_list   �  � � � r   	  � � � J   	 ����   � o      ���� 0 
index_list   �  � � � r     � � � n     � � � 1    ��
�� 
pDsC � n     � � � 4    �� �
�� 
cobj � m    ����  � o    ���� 0 these_tracks   � o      ���� 0 number_of_discs   �  � � � r     � � � l    ����� � I   �� ���
�� .corecnte****       **** � o    ���� 0 these_tracks  ��  ��  ��   � o      ���� 0 count_of_tracks   �  � � � U    � � � � k   & � � �  � � � r   & ) � � � m   & ' � � � � �   � l      ����� � o      ���� 0 low_item  ��  ��   �  � � � Y   * y ��� � ��� � Z   4 t � ����� � H   4 8 � � E  4 7 � � � l  4 5 ����� � o   4 5���� 0 
index_list  ��  ��   � o   5 6���� 0 i   � k   ; p � �  � � � r   ; A � � � n   ; ? � � � 4   < ?�� �
�� 
cobj � o   = >���� 0 i   � o   ; <���� 0 these_tracks   � o      ���� 0 
this_track   �  � � � r   B H � � � n   B F � � � 4   C F�� �
�� 
cobj � o   D E���� 0 i   � o   B C���� 0 these_tracks   � o      ���� 0 	this_item   �  ��� � Z   I p � � ��� � =  I L � � � l  I J ���~ � o   I J�}�} 0 low_item  �  �~   � m   J K � � � � �   � k   O V � �  � � � r   O R � � � o   O P�|�| 0 	this_item   � l      ��{�z � o      �y�y 0 low_item  �{  �z   �  ��x � r   S V � � � o   S T�w�w 0 i   � l      ��v�u � o      �t�t 0 low_item_index  �v  �u  �x   �  � � � A   Y b � � � l  Y ] �s�r  e   Y ] n  Y ] 1   Z \�q
�q 
pTrN o   Y Z�p�p 0 	this_item  �s  �r   � l  ] a�o�n e   ] a n  ] a 1   ^ `�m
�m 
pTrN o   ] ^�l�l 0 low_item  �o  �n   � �k k   e l		 

 r   e h o   e f�j�j 0 	this_item   l     �i�h o      �g�g 0 low_item  �i  �h   �f r   i l o   i j�e�e 0 i   l     �d�c o      �b�b 0 low_item_index  �d  �c  �f  �k  ��  ��  ��  ��  �� 0 i   � m   - .�a�a  � o   . /�`�` 0 count_of_tracks  ��   �  r   z ~ l  z {�_�^ o   z {�]�] 0 low_item  �_  �^   l     �\�[ n        ;   | } o   { |�Z�Z 0 sorted_list  �\  �[   �Y r    � l   ��X�W o    ��V�V 0 low_item_index  �X  �W   l     �U�T n       !   ;   � �! l  � �"�S�R" o   � ��Q�Q 0 
index_list  �S  �R  �U  �T  �Y   � o   " #�P�P 0 count_of_tracks   � #$# l  � ��O�N�M�O  �N  �M  $ %&% l  � ��L'(�L  ' O I deal with multiple discs (less than two means 1 or 'not set' which is 0)   ( �)) �   d e a l   w i t h   m u l t i p l e   d i s c s   ( l e s s   t h a n   t w o   m e a n s   1   o r   ' n o t   s e t '   w h i c h   i s   0 )& *�K* Z   � �+,�J-+ A   � �./. o   � ��I�I 0 number_of_discs  / m   � ��H�H , L   � �00 o   � ��G�G 0 sorted_list  �J  - k   � �11 232 l  � ��F45�F  4 S M there is probably a better way to do this since this is terribly inefficient   5 �66 �   t h e r e   i s   p r o b a b l y   a   b e t t e r   w a y   t o   d o   t h i s   s i n c e   t h i s   i s   t e r r i b l y   i n e f f i c i e n t3 787 r   � �9:9 J   � ��E�E  : o      �D�D 0 sorted_disc_list  8 ;<; Y   � �=�C>?�B= X   � �@�AA@ Z   � �BC�@�?B =   � �DED l  � �F�>�=F n   � �GHG 1   � ��<
�< 
pDsNH o   � ��;�; 0 sorted_track  �>  �=  E o   � ��:�: 0 disc_number  C r   � �IJI o   � ��9�9 0 sorted_track  J n      KLK  ;   � �L o   � ��8�8 0 sorted_disc_list  �@  �?  �A 0 sorted_track  A o   � ��7�7 0 sorted_list  �C 0 disc_number  > m   � ��6�6 ? o   � ��5�5 0 number_of_discs  �B  < M�4M L   � �NN o   � ��3�3 0 sorted_disc_list  �4  �K   � m     OO�                                                                                  hook   alis    2  WMS                        ĹJ�H+     �
iTunes.app                                                      U0�0�        ����  	                Applications    Ĺ�>      �i1       �  WMS:Applications:iTunes.app    
 i T u n e s . a p p    W M S  Applications/iTunes.app   / ��   � P�2P l     �1�0�/�1  �0  �/  �2       �.Q�-RS�.  Q �,�+�*�, 0 show_party_shuffle  �+ !0 tracks_sorted_by_track_number  
�* .aevtoappnull  �   � ****
�- boovtrueR �) ��(�'TU�&�) !0 tracks_sorted_by_track_number  �( �%V�% V  �$�$ 0 these_tracks  �'  T �#�"�!� ����������# 0 these_tracks  �" 0 sorted_list  �! 0 
index_list  �  0 number_of_discs  � 0 count_of_tracks  � 0 low_item  � 0 i  � 0 
this_track  � 0 	this_item  � 0 low_item_index  � 0 sorted_disc_list  � 0 disc_number  � 0 sorted_track  U 	O��� � ����
� 
cobj
� 
pDsC
� .corecnte****       ****
� 
pTrN
� 
kocl
� 
pDsN�& �� �jvE�OjvE�O��k/�,E�O�j E�O h�kh�E�O Nk�kh �� :��/E�O��/E�O��  �E�O�E�Y ��,E��,E �E�O�E�Y hY h[OY��O��6FO��6F[OY��O�l �Y >jvE�O 3k�kh  $�[��l kh ��,�  	��6FY h[OY��[OY��O�US �W��XY�
� .aevtoappnull  �   � ****W k     �ZZ  ��  �  �  X ��
� 0 
this_track  �
 0 chosen_album  Y  ��	��������� [���������������� ����� ���
�	 
sele� 0 sel  � 0 
album_list  
� 
kocl
� 
cobj
� .corecnte****       ****
� 
pAlb� 0 selected_album  
� 
cLiP
�  
cTrk[  �� 0 these_album_tracks  
�� 
cPly
�� 
pSpK
�� eSpKkSpS�� 0 p  �� !0 tracks_sorted_by_track_number  
�� 
insh
�� .coreclon****      � ****
�� 
cBrW
�� 
pPly
�� .sysodlogaskr        TEXT� �� �*�,jv �*�,E�OjvE�O *�[��l kh  ��,EE�O�� 	��6GY h[OY��O ]�[��l kh *�k/�-�[�,\Z�81EE�O*�.�[�,\Z�81E` O $)�k+ [��l kh  �a _ l [OY��[OY��Ob    *�a /*a k/a ,FY hY 	a j Uascr  ��ޭ