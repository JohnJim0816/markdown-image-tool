FasdUAS 1.101.10   ��   ��    k             l     ��������  ��  ��        p       	 	 ������ 0 reponame  ��     
  
 l     ����  r         m        �    J o h n J i m 0 8 1 6  o      ���� 0 username  ��  ��        l    ����  r        m       �    b l o g - f i g u r e s  o      ���� 0 reponame  ��  ��        l     ��������  ��  ��        l    ����  r        b         b     ! " ! b     # $ # b     % & % m    	 ' ' � ( ( D h t t p s : / / r a w . g i t h u b u s e r c o n t e n t . c o m / & o   	 
���� 0 username   $ m     ) ) � * *  / " o    ���� 0 reponame     m     + + � , ,  / m a s t e r  o      ���� 0 baseurl  ��  ��     - . - l     ��������  ��  ��   .  / 0 / l   O 1���� 1 O    O 2 3 2 k    N 4 4  5 6 5 l   ��������  ��  ��   6  7 8 7 r     9 : 9 l    ;���� ; 1    ��
�� 
sele��  ��   : o      ���� 0 itemlist itemList 8  < = < l   �� > ?��   > - '	set path to my theSplit(itemList, "/")    ? � @ @ N 	 s e t   p a t h   t o   m y   t h e S p l i t ( i t e m L i s t ,   " / " ) =  A B A r    * C D C n   ( E F E I    (�� G���� 0 thesplit theSplit G  H I H c    " J K J o     ���� 0 itemlist itemList K m     !��
�� 
TEXT I  L M L m   " # N N � O O  : M  P�� P m   # $ Q Q � R R  /��  ��   F  f     D o      ���� 0 filename   B  S T S l  + +��������  ��  ��   T  U V U r   + 2 W X W l  + . Y���� Y b   + . Z [ Z o   + ,���� 0 baseurl   [ o   , -���� 0 filename  ��  ��   X o      ���� 0 	sourceurl 	sourceUrl V  \ ] \ l  3 3��������  ��  ��   ]  ^ _ ^ r   3 B ` a ` b   3 > b c b b   3 : d e d m   3 6 f f � g g  ! [ ] ( e o   6 9���� 0 	sourceurl 	sourceUrl c m   : = h h � i i  ) a o      ���� 0 mdurl mdUrl _  j k j l  C C�� l m��   l   copy to clipboard    m � n n $   c o p y   t o   c l i p b o a r d k  o p o I  C L�� q��
�� .JonspClpnull���     **** q c   C H r s r o   C F���� 0 mdurl mdUrl s m   F G��
�� 
TEXT��   p  t u t l  M M��������  ��  ��   u  v w v l  M M�� x y��   x  display dialog sourceUrl    y � z z 0 d i s p l a y   d i a l o g   s o u r c e U r l w  { | { l   M M�� } ~��   }
	display dialog "��ͼƬ��URL����" default answer mdUrl buttons {"����", "�ر�"} default button 1 with title "��ʾ" with icon note
	
	if button returned of result = "����" then
		--���Ƶ����а�
		set the clipboard to (text returned of result) as string
	end if
	    ~ �  � 
 	 d i s p l a y   d i a l o g   "��V�rGv� U R L��c� "   d e f a u l t   a n s w e r   m d U r l   b u t t o n s   { "YR6 " ,   "Qs�� " }   d e f a u l t   b u t t o n   1   w i t h   t i t l e   "c�y: "   w i t h   i c o n   n o t e 
 	 
 	 i f   b u t t o n   r e t u r n e d   o f   r e s u l t   =   "YR6 "   t h e n 
 	 	 - -YR6R0RjRg 
 	 	 s e t   t h e   c l i p b o a r d   t o   ( t e x t   r e t u r n e d   o f   r e s u l t )   a s   s t r i n g 
 	 e n d   i f 
 	 |  ��� � l  M M��������  ��  ��  ��   3 m     � ��                                                                                  MACS  alis    @  Macintosh HD                   BD ����
Finder.app                                                     ����            ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   0  � � � l     ��������  ��  ��   �  � � � i      � � � I      �� ����� 0 thesplit theSplit �  � � � o      ���� 0 	thestring 	theString �  � � � o      ���� 0 thedelimiter theDelimiter �  ��� � o      ���� 0 replace  ��  ��   � k     W � �  � � � l     �� � ���   � . ( save delimiters to restore old settings    � � � � P   s a v e   d e l i m i t e r s   t o   r e s t o r e   o l d   s e t t i n g s �  � � � r      � � � n     � � � 1    ��
�� 
txdl � 1     ��
�� 
ascr � o      ���� 0 olddelimiters oldDelimiters �  � � � l   �� � ���   � - ' set delimiters to delimiter to be used    � � � � N   s e t   d e l i m i t e r s   t o   d e l i m i t e r   t o   b e   u s e d �  � � � r     � � � o    ���� 0 thedelimiter theDelimiter � n      � � � 1    
��
�� 
txdl � 1    ��
�� 
ascr �  � � � l   �� � ���   �   create the array    � � � � "   c r e a t e   t h e   a r r a y �  � � � r     � � � n     � � � 2    ��
�� 
citm � o    ���� 0 	thestring 	theString � o      ���� 0 thearray theArray �  � � � l   �� � ���   �   restore the old setting    � � � � 0   r e s t o r e   t h e   o l d   s e t t i n g �  � � � r     � � � o    ���� 0 olddelimiters oldDelimiters � n      � � � 1    ��
�� 
txdl � 1    ��
�� 
ascr �  � � � l   �� � ���   �   return the result	    � � � � &   r e t u r n   t h e   r e s u l t 	 �  � � � r     � � � l    ����� � I   �� ���
�� .corecnte****       **** � o    ���� 0 thearray theArray��  ��  ��   � o      ���� 0 len   �  � � � r     # � � � m     !����   � o      ���� 0 i   �  � � � l  $ $�� � ���   � ) # the first tmppath is the file name    � � � � F   t h e   f i r s t   t m p p a t h   i s   t h e   f i l e   n a m e �  � � � r   $ * � � � n   $ ( � � � 4   % (�� �
�� 
cobj � o   & '���� 0 len   � o   $ %���� 0 thearray theArray � o      ���� 0 tmppath   �  � � � r   + . � � � m   + , � � � � �   � o      ���� 0 fullpath   �  � � � W   / R � � � k   7 M � �  � � � r   7 > � � � b   7 < � � � b   7 : � � � o   7 8���� 0 replace   � o   8 9���� 0 tmppath   � o   : ;���� 0 fullpath   � o      ���� 0 fullpath   �  � � � r   ? D � � � [   ? B � � � o   ? @���� 0 i   � m   @ A����  � o      ���� 0 i   �  ��� � r   E M � � � n   E K � � � 4   F K�� �
�� 
cobj � l  G J ����� � \   G J � � � o   G H���� 0 len   � o   H I���� 0 i  ��  ��   � o   E F���� 0 thearray theArray � o      ���� 0 tmppath  ��   � =   3 6 � � � o   3 4���� 0 tmppath   � o   4 5���� 0 reponame   �  � � � L   S U � � o   S T���� 0 fullpath   �  ��� � l  V V��������  ��  ��  ��   �  � � � l     ��~�}�  �~  �}   �  �|  l     �{�z�y�{  �z  �y  �|       �x�x   �w�v�w 0 thesplit theSplit
�v .aevtoappnull  �   � **** �u ��t�s�r�u 0 thesplit theSplit�t �q�q   �p�o�n�p 0 	thestring 	theString�o 0 thedelimiter theDelimiter�n 0 replace  �s   	�m�l�k�j�i�h�g�f�e�m 0 	thestring 	theString�l 0 thedelimiter theDelimiter�k 0 replace  �j 0 olddelimiters oldDelimiters�i 0 thearray theArray�h 0 len  �g 0 i  �f 0 tmppath  �e 0 fullpath   �d�c�b�a�` ��_
�d 
ascr
�c 
txdl
�b 
citm
�a .corecnte****       ****
�` 
cobj�_ 0 reponame  �r X��,E�O���,FO��-E�O���,FO�j E�OjE�O��/E�O�E�O "h�� ��%�%E�O�kE�O�䥦/E�[OY��O�OP �^�]�\	�[
�^ .aevtoappnull  �   � **** k     O

  
      /�Z�Z  �]  �\    	  �Y �X ' ) +�W ��V�U�T N Q�S�R�Q f h�P�O�Y 0 username  �X 0 reponame  �W 0 baseurl  
�V 
sele�U 0 itemlist itemList
�T 
TEXT�S 0 thesplit theSplit�R 0 filename  �Q 0 	sourceurl 	sourceUrl�P 0 mdurl mdUrl
�O .JonspClpnull���     ****�[ P�E�O�E�O��%�%�%�%E�O� 8*�,E�O)��&��m+ E�O��%E` Oa _ %a %E` O_ �&j OPU ascr  ��ޭ