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
 l     ��������  ��  ��        l     ��  ��    P J Choose to bring the party shuffle to the front after adding tracks to it.     �   �   C h o o s e   t o   b r i n g   t h e   p a r t y   s h u f f l e   t o   t h e   f r o n t   a f t e r   a d d i n g   t r a c k s   t o   i t .      j     �� �� 0 show_party_shuffle    m     ��
�� boovfals      l     ��������  ��  ��        l   T ����  O    T    Z   S  ��   F        =   	   !   1    ��
�� 
pPlS ! m    ��
�� ePlSkPSP  =    " # " n     $ % $ 1    ��
�� 
pSpK % 1    ��
�� 
pPla # m    ��
�� eSpKkSpS  k   % & &  ' ( ' l   ��������  ��  ��   (  ) * ) Z   # + ,�� - + >    . / . 1    ��
�� 
sele / J    ����   , k   ! 0 0  1 2 1 l  ! !�� 3 4��   3 : 4 in case a lot of items are selected use a reference    4 � 5 5 h   i n   c a s e   a   l o t   o f   i t e m s   a r e   s e l e c t e d   u s e   a   r e f e r e n c e 2  6 7 6 r   ! ' 8 9 8 N   ! % : : 1   ! $��
�� 
sele 9 o      ���� 0 sel   7  ; < ; l  ( (�� = >��   = 4 . get a list of all the albums in the selection    > � ? ? \   g e t   a   l i s t   o f   a l l   t h e   a l b u m s   i n   t h e   s e l e c t i o n <  @ A @ r   ( , B C B J   ( *����   C o      ���� 0 
album_list   A  D E D X   - X F�� G F k   = S H H  I J I r   = C K L K e   = A M M n   = A N O N 1   > @��
�� 
pAlb O o   = >���� 0 
this_track   L o      ���� 0 selected_album   J  P Q P l  D D�� R S��   R 7 1 only add to the list if the album is not present    S � T T b   o n l y   a d d   t o   t h e   l i s t   i f   t h e   a l b u m   i s   n o t   p r e s e n t Q  U�� U Z   D S V W���� V H   D H X X E  D G Y Z Y o   D E���� 0 
album_list   Z o   E F���� 0 selected_album   W s   K O [ \ [ o   K L���� 0 selected_album   \ l      ]���� ] n       ^ _ ^  ;   M N _ o   L M���� 0 
album_list  ��  ��  ��  ��  ��  �� 0 
this_track   G o   0 1���� 0 sel   E  ` a ` l  Y Y��������  ��  ��   a  b c b X   Y � d�� e d k   i � f f  g h g l  i i�� i j��   i "  get all tracks of the Album    j � k k 8   g e t   a l l   t r a c k s   o f   t h e   A l b u m h  l m l r   i � n o n l  i } p���� p e   i } q q 6  i } r s r n   i q t u t 2   m q��
�� 
cTrk u 4   i m�� v
�� 
cLiP v m   k l����  s =  t { w x w 1   u w��
�� 
pAlb x o   x z���� 0 chosen_album  ��  ��   o o      ���� 0 these_album_tracks   m  y z y l  � ���������  ��  ��   z  { | { l  � ��� } ~��   } ( " put the tracks into Party Shuffle    ~ �   D   p u t   t h e   t r a c k s   i n t o   P a r t y   S h u f f l e |  � � � l  � ��� � ���   � e _ first delete tracks if they are already in Party Shuffle...otherwise they will not be re-added    � � � � �   f i r s t   d e l e t e   t r a c k s   i f   t h e y   a r e   a l r e a d y   i n   P a r t y   S h u f f l e . . . o t h e r w i s e   t h e y   w i l l   n o t   b e   r e - a d d e d �  � � � I  � ��� ���
�� .coredelonull���    obj  � l  � � ����� � 6  � � � � � n   � � � � � 2   � ���
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
pTrk��  ��  ��  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   �   now the business    � � � � "   n o w   t h e   b u s i n e s s �  � � � r   � � � � � l  � � ����� � e   � � � � n   � � � � � 1   � ���
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
rvse � n  � � � � � I   � ��� ����� !0 tracks_sorted_by_track_number   �  ��� � o   � ����� 0 these_album_tracks  ��  ��   �  f   � ���  �� 0 chosen_album   e o   \ ]���� 0 
album_list   c  � � � l  � ���������  ��  ��   �  ��� � Z   � � ����� � o   � ����� 0 show_party_shuffle   � r   � � � 4  
�� �
�� 
cPly � m  	 � � � � �  P a r t y   S h u f f l e � n       � � � 1  ��
�� 
pPly � 4 
�� �
�� 
cBrW � m  ���� ��  ��  ��  ��   - I #�� ���
�� .sysodlogaskr        TEXT � m   � � � � � b N o   t r a c k s   s e l e c t e d ,   s e l e c t   t r a c k ( s )   a n d   t r y   a g a i n��   *  ��� � l $$��������  ��  ��  ��  ��    Q  (S � ��� � k  +J � �  � � � l ++�� � ���   � 2 , XXX i wish this wasn't necessary - claytron    � � � � X   X X X   i   w i s h   t h i s   w a s n ' t   n e c e s s a r y   -   c l a y t r o n �  ��� � I +J�� � �
�� .sysodlogaskr        TEXT � m  +. � � � � � � T h e   P a r t y   S h u f f l e   p l a y l i s t   m u s t   b e   p l a y i n g   b e f o r e   a d d i n g   n e w   t r a c k s   t o   i t . . . � �� � �
�� 
btns � J  16 � �  ��� � m  14 � � � � �  C a n c e l��   � � � �
� 
dflt � m  9:�~�~  � �} � �
�} 
disp � m  =>�|�|  � �{ ��z
�{ 
givu � m  AD�y�y �z  ��   � R      �x�w�v
�x .ascrerr ****      � ****�w  �v  ��    m      � ��                                                                                  hook   alis    2  WMS                        ĹJ�H+     �
iTunes.app                                                      U0�0�        ����  	                Applications    Ĺ�>      �i1       �  WMS:Applications:iTunes.app    
 i T u n e s . a p p    W M S  Applications/iTunes.app   / ��  ��  ��     � � � l     �u�t�s�u  �t  �s   �  � � � l     �r�q�p�r  �q  �p   �  � � � l     �o � ��o   � &   sort the tracks by track number    � � � � @   s o r t   t h e   t r a c k s   b y   t r a c k   n u m b e r �  � � � l     �n � ��n   � , & routine based on Apple's "ASCII_Sort"    � � � � L   r o u t i n e   b a s e d   o n   A p p l e ' s   " A S C I I _ S o r t " �  � � � l     �m � ��m   � F @ http://www.apple.com/applescript/guidebook/sbrt/pgs/sbrt.05.htm    � � � � �   h t t p : / / w w w . a p p l e . c o m / a p p l e s c r i p t / g u i d e b o o k / s b r t / p g s / s b r t . 0 5 . h t m �  � � � i     � � � I      �l �k�l !0 tracks_sorted_by_track_number    �j o      �i�i 0 these_tracks  �j  �k   � k     �  O     � k     	 r    

 J    �h�h   o      �g�g 0 sorted_list  	  r   	  J   	 �f�f   o      �e�e 0 
index_list    r     l   �d�c I   �b�a
�b .corecnte****       **** o    �`�` 0 these_tracks  �a  �d  �c   o      �_�_ 0 count_of_tracks   �^ U     k    z  r      m     �   l      �]�\  o      �[�[ 0 low_item  �]  �\   !"! Y   ! p#�Z$%�Y# Z   + k&'�X�W& H   + /(( E  + .)*) l  + ,+�V�U+ o   + ,�T�T 0 
index_list  �V  �U  * o   , -�S�S 0 i  ' k   2 g,, -.- r   2 8/0/ n   2 6121 4   3 6�R3
�R 
cobj3 o   4 5�Q�Q 0 i  2 o   2 3�P�P 0 these_tracks  0 o      �O�O 0 
this_track  . 454 r   9 ?676 n   9 =898 4   : =�N:
�N 
cobj: o   ; <�M�M 0 i  9 o   9 :�L�L 0 these_tracks  7 o      �K�K 0 	this_item  5 ;�J; Z   @ g<=>�I< =  @ C?@? l  @ AA�H�GA o   @ A�F�F 0 low_item  �H  �G  @ m   A BBB �CC  = k   F MDD EFE r   F IGHG o   F G�E�E 0 	this_item  H l     I�D�CI o      �B�B 0 low_item  �D  �C  F J�AJ r   J MKLK o   J K�@�@ 0 i  L l     M�?�>M o      �=�= 0 low_item_index  �?  �>  �A  > NON A   P YPQP l  P TR�<�;R e   P TSS n  P TTUT 1   Q S�:
�: 
pTrNU o   P Q�9�9 0 	this_item  �<  �;  Q l  T XV�8�7V e   T XWW n  T XXYX 1   U W�6
�6 
pTrNY o   T U�5�5 0 low_item  �8  �7  O Z�4Z k   \ c[[ \]\ r   \ _^_^ o   \ ]�3�3 0 	this_item  _ l     `�2�1` o      �0�0 0 low_item  �2  �1  ] a�/a r   ` cbcb o   ` a�.�. 0 i  c l     d�-�,d o      �+�+ 0 low_item_index  �-  �,  �/  �4  �I  �J  �X  �W  �Z 0 i  $ m   $ %�*�* % o   % &�)�) 0 count_of_tracks  �Y  " efe r   q ughg l  q ri�(�'i o   q r�&�& 0 low_item  �(  �'  h l     j�%�$j n      klk  ;   s tl o   r s�#�# 0 sorted_list  �%  �$  f m�"m r   v znon l  v wp�!� p o   v w�� 0 low_item_index  �!  �   o l     q��q n      rsr  ;   x ys l  w xt��t o   w x�� 0 
index_list  �  �  �  �  �"   o    �� 0 count_of_tracks  �^   m     uu�                                                                                  hook   alis    2  WMS                        ĹJ�H+     �
iTunes.app                                                      U0�0�        ����  	                Applications    Ĺ�>      �i1       �  WMS:Applications:iTunes.app    
 i T u n e s . a p p    W M S  Applications/iTunes.app   / ��   v�v L   � �ww o   � ��� 0 sorted_list  �   � xyx l     ����  �  �  y z{z l     ����  �  �  { |}| l     �~�  ~ J D based on routine written by J Nicholas Jitkoff, Blacktree.com, also    ��� �   b a s e d   o n   r o u t i n e   w r i t t e n   b y   J   N i c h o l a s   J i t k o f f ,   B l a c k t r e e . c o m ,   a l s o} ��� l     ����  � E ? http://www.macosxhints.com/article.php?story=20040830035448525   � ��� ~   h t t p : / / w w w . m a c o s x h i n t s . c o m / a r t i c l e . p h p ? s t o r y = 2 0 0 4 0 8 3 0 0 3 5 4 4 8 5 2 5� ��� i    
��� I      ���� 0 play_next_in_ps  � ��� o      �� 0 t  �  �  � O     T��� k    S�� ��� r    ��� 6   ��� 3    �

�
 
cPly� =   ��� 1   	 �	
�	 
pSpK� m    �
� eSpKkSpS� o      �� 0 p  � ��� r    ��� n    ��� 1    �
� 
pidx� 1    �
� 
pTrk� o      �� 0 i  � ��� O    S��� k    R�� ��� r    >��� N    <�� l   ;���� 6   ;��� 2    "� 
�  
cTrk� F   # :��� ?   $ +��� 1   % '��
�� 
pidx� o   ( *���� 0 i  � B  , 9��� 1   - /��
�� 
pidx� l  0 8������ I  0 8�����
�� .corecnte****       ****� 2  1 4��
�� 
cTrk��  ��  ��  �  �  � o      ���� 0 ts  � ��� I  ? F����
�� .coreclon****      � ****� o   ? @���� 0 t  � �����
�� 
insh� o   A B���� 0 p  ��  � ��� I  G L�����
�� .coreclon****      � ****� o   G H���� 0 ts  ��  � ���� I  M R�����
�� .coredelonull���    obj � o   M N���� 0 ts  ��  ��  � o    ���� 0 p  �  � m     ���                                                                                  hook   alis    2  WMS                        ĹJ�H+     �
iTunes.app                                                      U0�0�        ����  	                Applications    Ĺ�>      �i1       �  WMS:Applications:iTunes.app    
 i T u n e s . a p p    W M S  Applications/iTunes.app   / ��  � ���� l     ��������  ��  ��  ��       ����������  � ���������� 0 show_party_shuffle  �� !0 tracks_sorted_by_track_number  �� 0 play_next_in_ps  
�� .aevtoappnull  �   � ****
�� boovfals� �� ����������� !0 tracks_sorted_by_track_number  �� ����� �  ���� 0 these_tracks  ��  � 	�������������������� 0 these_tracks  �� 0 sorted_list  �� 0 
index_list  �� 0 count_of_tracks  �� 0 low_item  �� 0 i  �� 0 
this_track  �� 0 	this_item  �� 0 low_item_index  � u����B��
�� .corecnte****       ****
�� 
cobj
�� 
pTrN�� �� }jvE�OjvE�O�j E�O h�kh�E�O Nk�kh �� :��/E�O��/E�O��  �E�O�E�Y ��,E��,E �E�O�E�Y hY h[OY��O��6FO��6F[OY��UO�� ������������� 0 play_next_in_ps  �� ����� �  ���� 0 t  ��  � ���������� 0 t  �� 0 p  �� 0 i  �� 0 ts  � ����������������������
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
�� .aevtoappnull  �   � ****� k    T��  ����  ��  ��  � ������ 0 
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
givu�� �� ��  ��  ��U�Q*�,� 	 *�,�,� �&*�,jv �*�,E�OjvE�O *�[��l kh  ��,EE�O�� 	��6GY h[OY��O ��[��l kh *�k/a -a [�,\Z�81EE` O*�,a -a [[�,\Z�8\[a ,\Z*a ,a ,E:A1j O*a ,a ,EE` O 6)_ k+ a ,[��l kh  �a ,E_  )�k+ Y h[OY��[OY�oOb    *a a /*a k/a ,FY hY 	a j  OPY - $a !a "a #kva $ka %la &a 'a (  W X ) *hUascr  ��ޭ