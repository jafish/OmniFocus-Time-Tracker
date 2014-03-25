FasdUAS 1.101.10   ��   ��    k             l      ��  ��   ��
	A script that allows time tracking of OmniFocus tasks in OmniOutliner. It is
	suggested that your OmniOutliner document contains columns for the
	Start Time, End Time, Date, and Project. To place a button for this
	script on your OmniFocus toolbar, place the script in
	~/Library/Scripts/Applications/OmniFocus, and it will show up
	in the Customize Toolbar pane.

	December 22, 2009

	Andrew Berry, andrewberry@sentex.net

The MIT License

Copyright (c) 2009, Andrew Berry

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

     � 	 	� 
 	 A   s c r i p t   t h a t   a l l o w s   t i m e   t r a c k i n g   o f   O m n i F o c u s   t a s k s   i n   O m n i O u t l i n e r .   I t   i s 
 	 s u g g e s t e d   t h a t   y o u r   O m n i O u t l i n e r   d o c u m e n t   c o n t a i n s   c o l u m n s   f o r   t h e 
 	 S t a r t   T i m e ,   E n d   T i m e ,   D a t e ,   a n d   P r o j e c t .   T o   p l a c e   a   b u t t o n   f o r   t h i s 
 	 s c r i p t   o n   y o u r   O m n i F o c u s   t o o l b a r ,   p l a c e   t h e   s c r i p t   i n 
 	 ~ / L i b r a r y / S c r i p t s / A p p l i c a t i o n s / O m n i F o c u s ,   a n d   i t   w i l l   s h o w   u p 
 	 i n   t h e   C u s t o m i z e   T o o l b a r   p a n e . 
 
 	 D e c e m b e r   2 2 ,   2 0 0 9 
 
 	 A n d r e w   B e r r y ,   a n d r e w b e r r y @ s e n t e x . n e t 
 
 T h e   M I T   L i c e n s e 
 
 C o p y r i g h t   ( c )   2 0 0 9 ,   A n d r e w   B e r r y 
 
 P e r m i s s i o n   i s   h e r e b y   g r a n t e d ,   f r e e   o f   c h a r g e ,   t o   a n y   p e r s o n   o b t a i n i n g   a   c o p y 
 o f   t h i s   s o f t w a r e   a n d   a s s o c i a t e d   d o c u m e n t a t i o n   f i l e s   ( t h e   " S o f t w a r e " ) ,   t o   d e a l 
 i n   t h e   S o f t w a r e   w i t h o u t   r e s t r i c t i o n ,   i n c l u d i n g   w i t h o u t   l i m i t a t i o n   t h e   r i g h t s 
 t o   u s e ,   c o p y ,   m o d i f y ,   m e r g e ,   p u b l i s h ,   d i s t r i b u t e ,   s u b l i c e n s e ,   a n d / o r   s e l l 
 c o p i e s   o f   t h e   S o f t w a r e ,   a n d   t o   p e r m i t   p e r s o n s   t o   w h o m   t h e   S o f t w a r e   i s 
 f u r n i s h e d   t o   d o   s o ,   s u b j e c t   t o   t h e   f o l l o w i n g   c o n d i t i o n s : 
 
 T h e   a b o v e   c o p y r i g h t   n o t i c e   a n d   t h i s   p e r m i s s i o n   n o t i c e   s h a l l   b e   i n c l u d e d   i n 
 a l l   c o p i e s   o r   s u b s t a n t i a l   p o r t i o n s   o f   t h e   S o f t w a r e . 
 
 T H E   S O F T W A R E   I S   P R O V I D E D   " A S   I S " ,   W I T H O U T   W A R R A N T Y   O F   A N Y   K I N D ,   E X P R E S S   O R 
 I M P L I E D ,   I N C L U D I N G   B U T   N O T   L I M I T E D   T O   T H E   W A R R A N T I E S   O F   M E R C H A N T A B I L I T Y , 
 F I T N E S S   F O R   A   P A R T I C U L A R   P U R P O S E   A N D   N O N I N F R I N G E M E N T .   I N   N O   E V E N T   S H A L L   T H E 
 A U T H O R S   O R   C O P Y R I G H T   H O L D E R S   B E   L I A B L E   F O R   A N Y   C L A I M ,   D A M A G E S   O R   O T H E R 
 L I A B I L I T Y ,   W H E T H E R   I N   A N   A C T I O N   O F   C O N T R A C T ,   T O R T   O R   O T H E R W I S E ,   A R I S I N G   F R O M , 
 O U T   O F   O R   I N   C O N N E C T I O N   W I T H   T H E   S O F T W A R E   O R   T H E   U S E   O R   O T H E R   D E A L I N G S   I N 
 T H E   S O F T W A R E . 
 
   
  
 l     ��������  ��  ��        l   * ����  O    *    k   )       O    Q    O    P    k    O       r        n        2   ��
�� 
OTst  1    ��
�� 
FCcn  o      ���� $0 theselecteditems theSelectedItems       Z    4 ! "���� ! l   ! #���� # A    ! $ % $ l    &���� & I   �� '��
�� .corecnte****       **** ' o    ���� $0 theselecteditems theSelectedItems��  ��  ��   % m     ���� ��  ��   " k   $ 0 ( (  ) * ) I  $ -�� + ,
�� .sysodisAaleR        TEXT + m   $ % - - � . . H Y o u   m u s t   f i r s t   s e l e c t   a   s i n g l e   t a s k . , �� / 0
�� 
mesS / m   & ' 1 1 � 2 2 ` S e l e c t   a   s i n g l e   t a s k   b e f o r e   r u n n i n g   t h i s   s c r i p t . 0 �� 3��
�� 
as A 3 m   ( )��
�� EAlTwarN��   *  4�� 4 L   . 0����  ��  ��  ��      5�� 5 Z   5 O 6 7���� 6 l  5 < 8���� 8 ?   5 < 9 : 9 l  5 : ;���� ; I  5 :�� <��
�� .corecnte****       **** < o   5 6���� $0 theselecteditems theSelectedItems��  ��  ��   : m   : ;���� ��  ��   7 k   ? K = =  > ? > I  ? H�� @ A
�� .sysodisAaleR        TEXT @ m   ? @ B B � C C < Y o u   m u s t   s e l e c t   o n l y   o n e   t a s k . A �� D E
�� 
mesS D m   A B F F � G G ` S e l e c t   a   s i n g l e   t a s k   b e f o r e   r u n n i n g   t h i s   s c r i p t . E �� H��
�� 
as A H m   C D��
�� EAlTwarN��   ?  I�� I L   I K����  ��  ��  ��  ��    4    �� J
�� 
FCdw J m    ����   4   �� K
�� 
docu K m    ����    L M L l  R R��������  ��  ��   M  N O N r   R ] P Q P n   R Y R S R 4   V Y�� T
�� 
FCdw T m   W X����  S 4   R V�� U
�� 
docu U m   T U����  Q o      ���� 0 thedoc theDoc O  V W V l  ^ ^��������  ��  ��   W  X Y X r   ^ l Z [ Z n   ^ h \ ] \ 1   d h��
�� 
valL ] n   ^ d ^ _ ^ 4   _ d�� `
�� 
cobj ` m   b c����  _ o   ^ _���� $0 theselecteditems theSelectedItems [ o      ���� "0 theselectedtask theSelectedTask Y  a b a r   m x c d c l  m t e���� e n   m t f g f 1   p t��
�� 
FCPr g o   m p���� "0 theselectedtask theSelectedTask��  ��   d o      ���� 0 taskproject taskProject b  h i h r   y ~ j k j m   y z����   k o      ���� 0 	timeentry 	timeEntry i  l�� l O   ) m n m k   �( o o  p q p r   � � r s r I  � ����� t
�� .corecrel****      � null��   t �� u��
�� 
kocl u m   � ���
�� 
OOrw��   s o      ���� 0 	timeentry 	timeEntry q  v w v r   � � x y x l  � � z���� z n   � � { | { 1   � ���
�� 
pnam | o   � ����� "0 theselectedtask theSelectedTask��  ��   y n       } ~ } m   � ���
�� 
ctxt ~ n   � �  �  1   � ���
�� 
OOtp � o   � ����� 0 	timeentry 	timeEntry w  ��� � X   �( ��� � � k   �# � �  � � � Z   � � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 thecell theCell � m   � � � � � � �  P r o j e c t � r   � � � � � l  � � ����� � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 taskproject taskProject��  ��   � n       � � � m   � ���
�� 
ctxt � o   � ����� 0 thecell theCell��  ��   �  � � � Z   � � ����� � =  � � � � � n   � � � � � 1   � ���
�� 
pnam � o   � ����� 0 thecell theCell � m   � � � � � � �  D a t e � r   � � � � � l  � � ����� � c   � � � � � l  � � ����� � I  � �������
�� .misccurdldt    ��� null��  ��  ��  ��   � m   � ���
�� 
TEXT��  ��   � n       � � � m   � ���
�� 
ctxt � o   � ����� 0 thecell theCell��  ��   �  ��� � Z  # � ����� � =  � � � n  	 � � � 1  	��
�� 
pnam � o  ���� 0 thecell theCell � m  	 � � � � �  S t a r t   T i m e � r   � � � l  ����� � n   � � � 1  ��
�� 
tstr � l  ����� � I ������
�� .misccurdldt    ��� null��  ��  ��  ��  ��  ��   � n       � � � m  ��
�� 
ctxt � o  ���� 0 thecell theCell��  ��  ��  �� 0 thecell theCell � n   � � � � � 2  � ���
�� 
OOce � o   � ��� 0 	timeentry 	timeEntry��   n n    � � � � 4  � ��~ �
�~ 
docu � m   � ��}�}  � m    � � ��                                                                                  OOut  alis    �  Blizzard HD                �n�sH+  #[#OmniOutliner Professional.app                                  |�s�M�j        ����  	                Applications    �o"�      �M�    #[#  6Blizzard HD:Applications:OmniOutliner Professional.app  <  O m n i O u t l i n e r   P r o f e s s i o n a l . a p p    B l i z z a r d   H D  *Applications/OmniOutliner Professional.app  / ��  ��    m      � ��                                                                                  OFOC  alis    T  Blizzard HD                �n�sH+  #[#OmniFocus.app                                                  \���]�        ����  	                Applications    �o"�      ��    #[#  &Blizzard HD:Applications:OmniFocus.app    O m n i F o c u s . a p p    B l i z z a r d   H D  Applications/OmniFocus.app  / ��  ��  ��     � � � l     �|�{�z�|  �{  �z   �  � � � l +> ��y�x � I +>�w ��v
�w .sysodlogaskr        TEXT � b  +: � � � b  +6 � � � m  +. � � � � � * F i n i s h e d   w o r k i n g   o n   ' � l .5 ��u�t � n  .5 � � � 1  15�s
�s 
pnam � o  .1�r�r "0 theselectedtask theSelectedTask�u  �t   � m  69 � � � � �  ' ?�v  �y  �x   �  � � � l     �q�p�o�q  �p  �o   �  ��n � l ?� ��m�l � O  ?� � � � k  H� � �  � � � X  H� ��k � � Z  b� � ��j�i � = bk � � � n  bg � � � 1  cg�h
�h 
pnam � o  bc�g�g 0 thecell theCell � m  gj � � � � �  E n d   T i m e � r  n} � � � l nw ��f�e � n  nw � � � 1  sw�d
�d 
tstr � l ns ��c�b � I ns�a�`�_
�a .misccurdldt    ��� null�`  �_  �c  �b  �f  �e   � n       � � � m  x|�^
�^ 
ctxt � o  wx�]�] 0 thecell theCell�j  �i  �k 0 thecell theCell � n  KR � � � 2 NR�\
�\ 
OOce � o  KN�[�[ 0 	timeentry 	timeEntry �  ��Z � I ���Y�X�W
�Y .miscactvnull��� ��� null�X  �W  �Z   � n  ?E � � � 4 BE�V �
�V 
docu � m  CD�U�U  � m  ?B � ��                                                                                  OOut  alis    �  Blizzard HD                �n�sH+  #[#OmniOutliner Professional.app                                  |�s�M�j        ����  	                Applications    �o"�      �M�    #[#  6Blizzard HD:Applications:OmniOutliner Professional.app  <  O m n i O u t l i n e r   P r o f e s s i o n a l . a p p    B l i z z a r d   H D  *Applications/OmniOutliner Professional.app  / ��  �m  �l  �n       �T � ��T   � �S
�S .aevtoappnull  �   � **** � �R ��Q�P � ��O
�R .aevtoappnull  �   � **** � k    � � �   � �  � � �  ��N�N  �Q  �P   � �M�M 0 thecell theCell � * ��L�K�J�I�H�G -�F 1�E�D�C�B B F�A�@�?�>�=�<�; ��:�9�8�7�6�5�4 � ��3�2 ��1 � ��0 ��/
�L 
docu
�K 
FCdw
�J 
FCcn
�I 
OTst�H $0 theselecteditems theSelectedItems
�G .corecnte****       ****
�F 
mesS
�E 
as A
�D EAlTwarN�C 
�B .sysodisAaleR        TEXT�A 0 thedoc theDoc
�@ 
cobj
�? 
valL�> "0 theselectedtask theSelectedTask
�= 
FCPr�< 0 taskproject taskProject�; 0 	timeentry 	timeEntry
�: 
kocl
�9 
OOrw
�8 .corecrel****      � null
�7 
pnam
�6 
OOtp
�5 
ctxt
�4 
OOce
�3 .misccurdldt    ��� null
�2 
TEXT
�1 
tstr
�0 .sysodlogaskr        TEXT
�/ .miscactvnull��� ��� null�O��'*�k/ G*�k/ ?*�,�-E�O�j k ������ OhY hO�j k ������ OhY hUUO*�k/�k/E` O�a k/a ,E` O_ a ,E` OjE` Oa �k/ �*a a l E` O_ a ,_ a ,a -FO {_ a -[a a l kh  �a ,a   _ a ,�a -FY hO�a ,a    *j !a "&�a -FY hO�a ,a #  *j !a $,�a -FY h[OY��UUOa %_ a ,%a &%j 'Oa �k/ F =_ a -[a a l kh  �a ,a (  *j !a $,�a -FY h[OY��O*j )U ascr  ��ޭ