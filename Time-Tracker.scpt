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
 l     ��������  ��  ��        j     �� �� $0 timetrackingfile timeTrackingFile  m        �   " T i m e - T r a c k i n g . o o 3      j    �� �� ,0 timetrackingfilepath timeTrackingFilePath  m       �   b / U s e r s / j a f i s h / D o c u m e n t s / O m n i P r e s e n c e / O m n i O u t l i n e r      j    �� �� 0 tasklink taskLink  m       �   $ o m n i f o c u s : / / / t a s k /      l          j   	 ��  �� :0 endrunningtaskautomatically endRunningTaskAutomatically   m   	 
��
�� boovtrue  [ U Set to true if you want current task to automatically end when a new one is started.     � ! ! �   S e t   t o   t r u e   i f   y o u   w a n t   c u r r e n t   t a s k   t o   a u t o m a t i c a l l y   e n d   w h e n   a   n e w   o n e   i s   s t a r t e d .   " # " l     �� $ %��   $ _ Y When set to false, the script allows you to keep multiple tasks "running" simultaneously    % � & & �   W h e n   s e t   t o   f a l s e ,   t h e   s c r i p t   a l l o w s   y o u   t o   k e e p   m u l t i p l e   t a s k s   " r u n n i n g "   s i m u l t a n e o u s l y #  ' ( ' l     ��������  ��  ��   (  ) * ) l     �� + ,��   + R L OmniOutliner Document Columns - set these if you have them in your document    , � - - �   O m n i O u t l i n e r   D o c u m e n t   C o l u m n s   -   s e t   t h e s e   i f   y o u   h a v e   t h e m   i n   y o u r   d o c u m e n t *  . / . j    �� 0�� (0 pprojectcolumnname pProjectColumnName 0 m     1 1 � 2 2  P r o j e c t /  3 4 3 j    �� 5�� $0 pstartcolumnname pStartColumnName 5 m     6 6 � 7 7  S t a r t   T i m e 4  8 9 8 j    �� :��  0 pendcolumnname pEndColumnName : m     ; ; � < <  E n d   T i m e 9  = > = j    �� ?�� *0 pestimatecolumnname pEstimateColumnName ? m     @ @ � A A  E s t i m a t e d   T i m e >  B C B j    �� D�� *0 pdurationcolumnname pDurationColumnName D m     E E � F F  T i m e   S p e n t C  G H G l     ��������  ��  ��   H  I J I l     �� K L��   K $  First, get the OmniFocus task    L � M M <   F i r s t ,   g e t   t h e   O m n i F o c u s   t a s k J  N O N l    � P���� P O     � Q R Q k    � S S  T U T O    Q V W V O    P X Y X k    O Z Z  [ \ [ r     ] ^ ] n     _ ` _ 2   ��
�� 
OTst ` 1    ��
�� 
FCcn ^ o      ���� $0 theselecteditems theSelectedItems \  a b a Z    4 c d���� c l   ! e���� e A    ! f g f l    h���� h I   �� i��
�� .corecnte****       **** i o    ���� $0 theselecteditems theSelectedItems��  ��  ��   g m     ���� ��  ��   d k   $ 0 j j  k l k I  $ -�� m n
�� .sysodisAaleR        TEXT m m   $ % o o � p p H Y o u   m u s t   f i r s t   s e l e c t   a   s i n g l e   t a s k . n �� q r
�� 
mesS q m   & ' s s � t t ` S e l e c t   a   s i n g l e   t a s k   b e f o r e   r u n n i n g   t h i s   s c r i p t . r �� u��
�� 
as A u m   ( )��
�� EAlTwarN��   l  v�� v L   . 0����  ��  ��  ��   b  w�� w Z   5 O x y���� x l  5 < z���� z ?   5 < { | { l  5 : }���� } I  5 :�� ~��
�� .corecnte****       **** ~ o   5 6���� $0 theselecteditems theSelectedItems��  ��  ��   | m   : ;���� ��  ��   y k   ? K    � � � I  ? H�� � �
�� .sysodisAaleR        TEXT � m   ? @ � � � � � < Y o u   m u s t   s e l e c t   o n l y   o n e   t a s k . � �� � �
�� 
mesS � m   A B � � � � � ` S e l e c t   a   s i n g l e   t a s k   b e f o r e   r u n n i n g   t h i s   s c r i p t . � �� ���
�� 
as A � m   C D��
�� EAlTwarN��   �  ��� � L   I K����  ��  ��  ��  ��   Y 4    �� �
�� 
FCdw � m    ����  W 4   �� �
�� 
docu � m    ����  U  � � � l  R R��������  ��  ��   �  � � � r   R \ � � � n   R X � � � 4   S X�� �
�� 
cobj � m   V W����  � o   R S���� $0 theselecteditems theSelectedItems � o      ���� *0 theselectedtasknode theSelectedTaskNode �  � � � r   ] h � � � n   ] d � � � 1   ` d��
�� 
valL � o   ] `���� *0 theselectedtasknode theSelectedTaskNode � o      ���� "0 theselectedtask theSelectedTask �  � � � r   i t � � � l  i p ����� � n   i p � � � 1   l p��
�� 
FCPr � o   i l���� "0 theselectedtask theSelectedTask��  ��   � o      ���� 0 taskproject taskProject �  � � � r   u � � � � c   u � � � � b   u � � � � o   u z���� 0 tasklink taskLink � n   z � � � � 1   } ���
�� 
ID   � o   z }���� "0 theselectedtask theSelectedTask � m   � ���
�� 
TEXT � o      ���� 0 tasklink taskLink �  � � � l  � ���������  ��  ��   �  ��� � O   � � � � � k   � � � �  � � � l  � ��� � ���   � h b Second, look in the OmniOutliner document for a task that might already be started with this name    � � � � �   S e c o n d ,   l o o k   i n   t h e   O m n i O u t l i n e r   d o c u m e n t   f o r   a   t a s k   t h a t   m i g h t   a l r e a d y   b e   s t a r t e d   w i t h   t h i s   n a m e �  � � � l  � ��� � ���   � c ] If there is a task with this name, look in its work slices for an already running work slice    � � � � �   I f   t h e r e   i s   a   t a s k   w i t h   t h i s   n a m e ,   l o o k   i n   i t s   w o r k   s l i c e s   f o r   a n   a l r e a d y   r u n n i n g   w o r k   s l i c e �  � � � l  � ��� � ���   � 3 - If one is found, end it and notify the user.    � � � � Z   I f   o n e   i s   f o u n d ,   e n d   i t   a n d   n o t i f y   t h e   u s e r . �  � � � r   � � � � � n  � � � � � I   � ��� ����� 00 checkexistingtimeentry CheckExistingTimeEntry �  � � � o   � ����� "0 theselectedtask theSelectedTask �  � � � o   � ����� 0 taskproject taskProject �  ��� � o   � ����� 0 tasklink taskLink��  ��   �  f   � � � o      ���� 0 currenttask currentTask �  � � � l  � ���������  ��  ��   �  � � � Z   � � � ����� � o   � ����� :0 endrunningtaskautomatically endRunningTaskAutomatically � k   � � � �  � � � l  � ��� � ���   � . ( Check all tasks for running Work Slices    � � � � P   C h e c k   a l l   t a s k s   f o r   r u n n i n g   W o r k   S l i c e s �  ��� � n  � � � � � I   � ��������� &0 endalltimeentries EndAllTimeEntries��  ��   �  f   � ���  ��  ��   �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 	 try    � � � �  t r y �  � � � l  � ��� � ���   � = 7	set timeEntry to my StartNewTimeEntry(theSelectedTask)    � � � � n 	 s e t   t i m e E n t r y   t o   m y   S t a r t N e w T i m e E n t r y ( t h e S e l e c t e d T a s k ) �  � � � l  � ��� � ���   �  on error theError    � � � � " o n   e r r o r   t h e E r r o r �  � � � l  � ��� � ���   � : 4	display dialog "Please open '" & (timeTrackingFile)    � � � � h 	 d i s p l a y   d i a l o g   " P l e a s e   o p e n   ' "   &   ( t i m e T r a c k i n g F i l e ) �  � � � l  � ��� � ���   �  	return theError    � � � �   	 r e t u r n   t h e E r r o r �  ��� � l  � ��� � ���   �  end try    � � � �  e n d   t r y��   � m   � � � ��                                                                                  OOut  alis    v  Macintosh HD               �dĊH+   J�OmniOutliner Pro.app                                            ����:J        ����  	                Applications    �e
�      �:�u     J�  /Macintosh HD:Applications: OmniOutliner Pro.app   *  O m n i O u t l i n e r   P r o . a p p    M a c i n t o s h   H D  !Applications/OmniOutliner Pro.app   / ��  ��   R m      � ��                                                                                  OFOC  alis    X  Macintosh HD               �dĊH+   J�OmniFocus.app                                                   )p�Ν��        ����  	                Applications    �e
�      Ν�^     J�  (Macintosh HD:Applications: OmniFocus.app    O m n i F o c u s . a p p    M a c i n t o s h   H D  Applications/OmniFocus.app  / ��  ��  ��   O  �  � l     ��������  ��  ��     l     �������  ��  �    l     �~�~     CheckExistingTimeEntry    � .   C h e c k E x i s t i n g T i m e E n t r y 	 l     �}
�}  
 K E Checks for an existing active entry for the given OmniFocus task and    � �   C h e c k s   f o r   a n   e x i s t i n g   a c t i v e   e n t r y   f o r   t h e   g i v e n   O m n i F o c u s   t a s k   a n d	  l     �|�|   !  1. Ends it if it's running    � 6   1 .   E n d s   i t   i f   i t ' s   r u n n i n g  l     �{�{   - ' 2. Starts a new work slice if it isn't    � N   2 .   S t a r t s   a   n e w   w o r k   s l i c e   i f   i t   i s n ' t  l     �z�z    
 Returns:     �    R e t u r n s :    i     I      �y �x�y 00 checkexistingtimeentry CheckExistingTimeEntry  !"! o      �w�w 0 	theoftask 	theOFTask" #$# o      �v�v 0 theofproject theOFProject$ %�u% o      �t�t 0 theoftasklink theOFTaskLink�u  �x   k    �&& '(' l     �s)*�s  ) H B If a work slice for the task is found, end it and notify the user   * �++ �   I f   a   w o r k   s l i c e   f o r   t h e   t a s k   i s   f o u n d ,   e n d   i t   a n d   n o t i f y   t h e   u s e r( ,-, l     �r�q�p�r  �q  �p  - .�o. O    �/0/ k   �11 232 l   �n45�n  4 / ) Does a row with this name already exist?   5 �66 R   D o e s   a   r o w   w i t h   t h i s   n a m e   a l r e a d y   e x i s t ?3 787 r    9:9 6  ;<; 4   �m=
�m 
OOrw= m    �l�l < =   >?> 1    �k
�k 
OOtp? n    @A@ 1    �j
�j 
pnamA o    �i�i 0 	theoftask 	theOFTask: o      �h�h 0 taskrow taskRow8 BCB l   �g�f�e�g  �f  �e  C DED Z   �FG�dHF >   !IJI o    �c�c 0 taskrow taskRowJ m     �b
�b 
msngG k   $.KK LML l  $ $�aNO�a  N : 4 Look for a child row with pEndColumnName cell empty   O �PP h   L o o k   f o r   a   c h i l d   r o w   w i t h   p E n d C o l u m n N a m e   c e l l   e m p t yM QRQ r   $ 9STS 6 $ 7UVU n   $ 'WXW 2  % '�`
�` 
OOsuX o   $ %�_�_ 0 taskrow taskRowV =  ( 6YZY n   ) 2[\[ 1   0 2�^
�^ 
valL\ 4   ) 0�]]
�] 
OOce] o   * /�\�\  0 pendcolumnname pEndColumnNameZ m   3 5�[
�[ 
msngT o      �Z�Z "0 unfinishedtasks unfinishedTasksR ^_^ l  : :�Y�X�W�Y  �X  �W  _ `a` Z   :,bc�Vdb >  : >efe o   : ;�U�U "0 unfinishedtasks unfinishedTasksf J   ; =�T�T  c k   A �gg hih l  A A�Sjk�S  j   Finish those tasks   k �ll &   F i n i s h   t h o s e   t a s k si mnm X   A �o�Rpo k   Q �qq rsr r   Q Xtut I  Q V�Q�P�O
�Q .misccurdldt    ��� null�P  �O  u o      �N�N 0 endtime endTimes vwv r   Y `xyx I  Y ^�M�L�K
�M .misccurdldt    ��� null�L  �K  y o      �J�J 0 	starttime 	startTimew z{z Z  a �|}�I�H| I  a m�G~�F
�G .coredoexnull���     ****~ n   a i� 4   b i�E�
�E 
OOce� o   c h�D�D $0 pstartcolumnname pStartColumnName� o   a b�C�C 0 workslicerow workSliceRow�F  } r   p |��� n   p z��� 1   x z�B
�B 
valL� n   p x��� 4   q x�A�
�A 
OOce� o   r w�@�@ $0 pstartcolumnname pStartColumnName� o   p q�?�? 0 workslicerow workSliceRow� o      �>�> 0 	starttime 	startTime�I  �H  { ��� Z  � ����=�<� I  � ��;��:
�; .coredoexnull���     ****� n   � ���� 4   � ��9�
�9 
OOce� o   � ��8�8  0 pendcolumnname pEndColumnName� o   � ��7�7 0 workslicerow workSliceRow�:  � r   � ���� o   � ��6�6 0 endtime endTime� n      ��� 1   � ��5
�5 
valL� n   � ���� 4   � ��4�
�4 
OOce� o   � ��3�3  0 pendcolumnname pEndColumnName� o   � ��2�2 0 workslicerow workSliceRow�=  �<  � ��� r   � ���� l  � ���1�0� ^   � ���� l  � ���/�.� \   � ���� o   � ��-�- 0 endtime endTime� o   � ��,�, 0 	starttime 	startTime�/  �.  � m   � ��+�+�1  �0  � o      �*�* 0 taskduration taskDuration� ��)� Z  � ����(�'� I  � ��&��%
�& .coredoexnull���     ****� n   � ���� 4   � ��$�
�$ 
OOce� o   � ��#�# *0 pdurationcolumnname pDurationColumnName� o   � ��"�" 0 workslicerow workSliceRow�%  � r   � ���� o   � ��!�! 0 taskduration taskDuration� n      ��� 1   � �� 
�  
valL� n   � ���� 4   � ���
� 
OOce� o   � ��� *0 pdurationcolumnname pDurationColumnName� o   � ��� 0 workslicerow workSliceRow�(  �'  �)  �R 0 workslicerow workSliceRowp o   D E�� "0 unfinishedtasks unfinishedTasksn ��� r   � ���� b   � ���� m   � ��� ���  F i n i s h e d   t a s k  � n   � ���� 1   � ��
� 
pnam� o   � ��� 0 	theoftask 	theOFTask� o      �� *0 notificationmessage notificationMessage� ��� l  � �����  �  �  � ��� l  � �����  � # return true -- task was ended   � ��� : r e t u r n   t r u e   - -   t a s k   w a s   e n d e d�  �V  d k   �,�� ��� l  � �����  � 8 2 No tasks were unfinished, so start a new one here   � ��� d   N o   t a s k s   w e r e   u n f i n i s h e d ,   s o   s t a r t   a   n e w   o n e   h e r e� ��� r   � ���� I  � ����
� .corecrel****      � null�  � ���
� 
kocl� m   � ��
� 
OOrw� ���
� 
insh� n   � ����  ;   � �� n   � ���� 2  � ��
� 
OOsu� o   � ��� 0 taskrow taskRow�  � o      �
�
 0 thenewtimerow theNewTimeRow� ��� r   � ���� m   � ��� ���  W o r k   S l i c e� n      ��� m   � ��	
�	 
ctxt� n   � ���� 1   � ��
� 
OOtp� o   � ��� 0 thenewtimerow theNewTimeRow� ��� Z  � ����� I  �	���
� .coredoexnull���     ****� n   ���� 4   ���
� 
OOce� o   ��� $0 pstartcolumnname pStartColumnName� o   � �� �  0 thenewtimerow theNewTimeRow�  � r  ��� I ������
�� .misccurdldt    ��� null��  ��  � n      ��� 1  ��
�� 
valL� n  ��� 4  ���
�� 
OOce� o  ���� $0 pstartcolumnname pStartColumnName� o  ���� 0 thenewtimerow theNewTimeRow�  �  � ��� r  !*��� b  !(��� m  !$�� ��� 0 S t a r t e d   w o r k i n g   o n   t a s k  � n  $'��� 1  %'��
�� 
pnam� o  $%���� 0 	theoftask 	theOFTask� o      ���� *0 notificationmessage notificationMessage� ���� l ++������  � * $return false -- new task was started   � ��� H r e t u r n   f a l s e   - -   n e w   t a s k   w a s   s t a r t e d��  a ���� l --��������  ��  ��  ��  �d  H k  1��� ��� l 11������  � 4 . Create the row for this new task and start it   � ��� \   C r e a t e   t h e   r o w   f o r   t h i s   n e w   t a s k   a n d   s t a r t   i t�    r  1: I 18����
�� .corecrel****      � null��   ����
�� 
kocl m  34��
�� 
OOrw��   o      ���� 0 thenewtaskrow theNewTaskRow  r  ;F	 c  ;@

 o  ;<���� 0 theoftasklink theOFTaskLink m  <?��
�� 
TEXT	 n       1  AE��
�� 
OOnt o  @A���� 0 thenewtaskrow theNewTaskRow  r  GR l GJ���� n  GJ 1  HJ��
�� 
pnam o  GH���� 0 	theoftask 	theOFTask��  ��   n       m  MQ��
�� 
ctxt n  JM 1  KM��
�� 
OOtp o  JK���� 0 thenewtaskrow theNewTaskRow  Z Sv���� I S_����
�� .coredoexnull���     **** 4  S[��
�� 
OOce o  UZ���� (0 pprojectcolumnname pProjectColumnName��   r  br  n  be!"! 1  ce��
�� 
pnam" o  bc���� 0 theofproject theOFProject  n      #$# m  mq��
�� 
ctxt$ 4  em��%
�� 
OOce% o  gl���� (0 pprojectcolumnname pProjectColumnName��  ��   &'& l ww��������  ��  ��  ' ()( l ww��*+��  * , & Make a sub-row for the working period   + �,, L   M a k e   a   s u b - r o w   f o r   t h e   w o r k i n g   p e r i o d) -.- r  w�/0/ I w�����1
�� .corecrel****      � null��  1 ��23
�� 
kocl2 m  yz��
�� 
OOrw3 ��4��
�� 
insh4 n  }�565  ;  ��6 n  }�787 2 ~���
�� 
OOsu8 o  }~���� 0 thenewtaskrow theNewTaskRow��  0 o      ���� 0 thenewtimerow theNewTimeRow. 9:9 r  ��;<; m  ��== �>>  W o r k   S l i c e< n      ?@? m  ����
�� 
ctxt@ n  ��ABA 1  ����
�� 
OOtpB o  ������ 0 thenewtimerow theNewTimeRow: CDC Z ��EF����E I ����G��
�� .coredoexnull���     ****G 4  ����H
�� 
OOceH o  ������ $0 pstartcolumnname pStartColumnName��  F r  ��IJI I ��������
�� .misccurdldt    ��� null��  ��  J n      KLK 1  ����
�� 
valLL n  ��MNM o  ������ $0 pstartcolumnname pStartColumnNameN o  ������ 0 thenewtimerow theNewTimeRow��  ��  D OPO r  ��QRQ b  ��STS m  ��UU �VV 0 S t a r t e d   w o r k i n g   o n   t a s k  T n  ��WXW 1  ����
�� 
pnamX o  ������ 0 	theoftask 	theOFTaskR o      ���� *0 notificationmessage notificationMessageP Y��Y l ����Z[��  Z * $return false -- new task was started   [ �\\ H r e t u r n   f a l s e   - -   n e w   t a s k   w a s   s t a r t e d��  E ]��] I ����^��
�� .sysonotfnull��� ��� TEXT^ o  ������ *0 notificationmessage notificationMessage��  ��  0 n     	_`_ 5    	��a��
�� 
docua o    ���� $0 timetrackingfile timeTrackingFile
�� kfrmname` m     bb�                                                                                  OOut  alis    v  Macintosh HD               �dĊH+   J�OmniOutliner Pro.app                                            ����:J        ����  	                Applications    �e
�      �:�u     J�  /Macintosh HD:Applications: OmniOutliner Pro.app   *  O m n i O u t l i n e r   P r o . a p p    M a c i n t o s h   H D  !Applications/OmniOutliner Pro.app   / ��  �o   cdc l     ��������  ��  ��  d efe i    "ghg I      �������� &0 endalltimeentries EndAllTimeEntries��  ��  h O     �iji k    �kk lml r    !non 6  pqp 2   ��
�� 
OOrwq =   rsr n    tut 1    ��
�� 
valLu 4    ��v
�� 
OOcev o    ����  0 pendcolumnname pEndColumnNames m    ��
�� 
msngo o      ���� "0 unfinishedtasks unfinishedTasksm w��w Z   " �xy����x >  " &z{z o   " #���� "0 unfinishedtasks unfinishedTasks{ J   # %����  y k   ) �|| }~} l  ) )�����     Finish those tasks   � ��� &   F i n i s h   t h o s e   t a s k s~ ���� X   ) ������ k   9 ��� ��� r   9 @��� I  9 >������
�� .misccurdldt    ��� null��  ��  � o      ���� 0 endtime endTime� ��� r   A H��� I  A F������
�� .misccurdldt    ��� null��  ��  � o      ���� 0 	starttime 	startTime� ��� Z  I h������� I  I U�����
�� .coredoexnull���     ****� n   I Q��� 4   J Q���
�� 
OOce� o   K P���� $0 pstartcolumnname pStartColumnName� o   I J���� 0 workslicerow workSliceRow��  � r   X d��� n   X b��� 1   ` b��
�� 
valL� n   X `��� 4   Y `���
�� 
OOce� o   Z _���� $0 pstartcolumnname pStartColumnName� o   X Y���� 0 workslicerow workSliceRow� o      ���� 0 	starttime 	startTime��  ��  � ��� Z  i �������� I  i u����
�� .coredoexnull���     ****� n   i q��� 4   j q�~�
�~ 
OOce� o   k p�}�}  0 pendcolumnname pEndColumnName� o   i j�|�| 0 workslicerow workSliceRow�  � r   x ���� o   x y�{�{ 0 endtime endTime� n      ��� 1   � ��z
�z 
valL� n   y ���� 4   z ��y�
�y 
OOce� o   { ��x�x  0 pendcolumnname pEndColumnName� o   y z�w�w 0 workslicerow workSliceRow��  ��  � ��v� Z  � ����u�t� I  � ��s��r
�s .coredoexnull���     ****� n   � ���� 4   � ��q�
�q 
OOce� o   � ��p�p *0 pdurationcolumnname pDurationColumnName� o   � ��o�o 0 workslicerow workSliceRow�r  � r   � ���� ^   � ���� l  � ���n�m� \   � ���� o   � ��l�l 0 endtime endTime� o   � ��k�k 0 	starttime 	startTime�n  �m  � m   � ��j�j� n      ��� 1   � ��i
�i 
valL� n   � ���� 4   � ��h�
�h 
OOce� o   � ��g�g *0 pdurationcolumnname pDurationColumnName� o   � ��f�f 0 workslicerow workSliceRow�u  �t  �v  �� 0 workslicerow workSliceRow� o   , -�e�e "0 unfinishedtasks unfinishedTasks��  ��  ��  ��  j n     	��� 5    	�d��c
�d 
docu� o    �b�b $0 timetrackingfile timeTrackingFile
�c kfrmname� m     ���                                                                                  OOut  alis    v  Macintosh HD               �dĊH+   J�OmniOutliner Pro.app                                            ����:J        ����  	                Applications    �e
�      �:�u     J�  /Macintosh HD:Applications: OmniOutliner Pro.app   *  O m n i O u t l i n e r   P r o . a p p    M a c i n t o s h   H D  !Applications/OmniOutliner Pro.app   / ��  f ��a� l     �`�_�^�`  �_  �^  �a       �]�   �\ 1 6 ; @ E����]  � �[�Z�Y�X�W�V�U�T�S�R�Q�P�[ $0 timetrackingfile timeTrackingFile�Z ,0 timetrackingfilepath timeTrackingFilePath�Y 0 tasklink taskLink�X :0 endrunningtaskautomatically endRunningTaskAutomatically�W (0 pprojectcolumnname pProjectColumnName�V $0 pstartcolumnname pStartColumnName�U  0 pendcolumnname pEndColumnName�T *0 pestimatecolumnname pEstimateColumnName�S *0 pdurationcolumnname pDurationColumnName�R 00 checkexistingtimeentry CheckExistingTimeEntry�Q &0 endalltimeentries EndAllTimeEntries
�P .aevtoappnull  �   � ****
�\ boovtrue� �O�N�M���L�O 00 checkexistingtimeentry CheckExistingTimeEntry�N �K��K �  �J�I�H�J 0 	theoftask 	theOFTask�I 0 theofproject theOFProject�H 0 theoftasklink theOFTaskLink�M  � �G�F�E�D�C�B�A�@�?�>�=�<�G 0 	theoftask 	theOFTask�F 0 theofproject theOFProject�E 0 theoftasklink theOFTaskLink�D 0 taskrow taskRow�C "0 unfinishedtasks unfinishedTasks�B 0 workslicerow workSliceRow�A 0 endtime endTime�@ 0 	starttime 	startTime�? 0 taskduration taskDuration�> *0 notificationmessage notificationMessage�= 0 thenewtimerow theNewTimeRow�< 0 thenewtaskrow theNewTaskRow� b�;�:�9��8�7�6�5�4�3�2�1�0�/�.�-��,�+�*��)��(�'=�&U�%
�; 
docu
�: kfrmname
�9 
OOrw�  
�8 
OOtp
�7 
pnam
�6 
msng
�5 
OOsu
�4 
OOce
�3 
valL
�2 
kocl
�1 
cobj
�0 .corecnte****       ****
�/ .misccurdldt    ��� null
�. .coredoexnull���     ****�-
�, 
insh�+ 
�* .corecrel****      � null
�) 
ctxt
�( 
TEXT
�' 
OOnt�& $0 pstartcolumnname pStartColumnName
�% .sysonotfnull��� ��� TEXT�L���b   �0�*�k/�[�,\Z��,81E�O����-�[�b  /�,\Z�81E�O�jv � ��[��l kh *j E�O*j E�O��b  /j  ��b  /�,E�Y hO��b  /j  ���b  /�,FY hO��a !E�O��b  /j  ���b  /�,FY h[OY��Oa ��,%E�OPY P*��a ��-6a  E�Oa ��,a -FO��b  /j  *j ��b  /�,FY hOa ��,%E�OPOPY �*��l E�O�a &�a ,FO��,��,a -FO*�b  /j  ��,*�b  /a -FY hO*��a ��-6a  E�Oa ��,a -FO*�b  /j  *j �a ,�,FY hOa ��,%E�OPO�j U� �$h�#�"���!�$ &0 endalltimeentries EndAllTimeEntries�#  �"  � � ����  "0 unfinishedtasks unfinishedTasks� 0 workslicerow workSliceRow� 0 endtime endTime� 0 	starttime 	startTime� ��������������
� 
docu
� kfrmname
� 
OOrw
� 
OOce
� 
valL
� 
msng
� 
kocl
� 
cobj
� .corecnte****       ****
� .misccurdldt    ��� null
� .coredoexnull���     ****��! ���b   �0 �*�-�[�b  /�,\Z�81E�O�jv � ��[��l 
kh *j E�O*j E�O��b  /j  ��b  /�,E�Y hO��b  /j  ���b  /�,FY hO��b  /j  ���!��b  /�,FY h[OY��Y hU� �������
� .aevtoappnull  �   � ****� k     ���  N��  �  �  �  �  ���
�	��� o� s���� � �� �������������� �������
� 
docu
�
 
FCdw
�	 
FCcn
� 
OTst� $0 theselecteditems theSelectedItems
� .corecnte****       ****
� 
mesS
� 
as A
� EAlTwarN� 
� .sysodisAaleR        TEXT
�  
cobj�� *0 theselectedtasknode theSelectedTaskNode
�� 
valL�� "0 theselectedtask theSelectedTask
�� 
FCPr�� 0 taskproject taskProject
�� 
ID  
�� 
TEXT�� 00 checkexistingtimeentry CheckExistingTimeEntry�� 0 currenttask currentTask�� &0 endalltimeentries EndAllTimeEntries� �� �*�k/ G*�k/ ?*�,�-E�O�j k ������ OhY hO�j k ������ OhY hUUO�a k/E` O_ a ,E` O_ a ,E` Ob  _ a ,%a &Ec  Oa  *)_ _ b  m+ E` Ob   
)j+ Y hOPUUascr  ��ޭ