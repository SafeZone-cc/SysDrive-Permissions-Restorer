��ਯ� "SystemDrive Folder NTFS privileges restorer" by Alex Dragokas

�����祭��:
�ਬ������, ����� NTFS-�ࠢ� ���� ��⥬���� ��᪠ ���०����.
�ਬ��� �ਧ�����:
�⪠� � ����㯥 �� ����� � ��७� ��᪠ C:

-------------------------------
�⠭����� �ࠢ�:
-------------------------------

1) ��ଠ�쭮� ᮪�饭��� ���ᠭ�� (��� ����ன �業��):
���짮��⥫� �� ��㯯� "������������" ࠧ�蠥��� ������ 䠩��� � ��७� ��᪠ C: ��᫥ ��宦����� �஢�ન UAC.
���짮��⥫� �� ��㯯 "������������" � "���짮��⥫�" ࠧ�蠥��� ᮧ����� ����� � ��୥ ��᪠ C:.

2) ���஡�� ᯨ᮪ �ࠢ:
�������
������ icacls %SystemDrive%\ ��� �஢�ન.

��� Windows Vista / 7:

BUILTIN\������������:(F)
BUILTIN\������������:(OI)(CI)(IO)(F)
NT AUTHORITY\��⥬�:(F)
NT AUTHORITY\��⥬�:(OI)(CI)(IO)(F)
BUILTIN\���짮��⥫�:(OI)(CI)(RX)
NT AUTHORITY\��襤訥 �஢���:(OI)(CI)(IO)(M)
NT AUTHORITY\��襤訥 �஢���:(AD)
��易⥫쭠� ��⪠\��᮪�� ��易⥫�� �஢���:(OI)(NP)(IO)(NW)

��� Windows 8 / 8.1 / 10:

BUILTIN\������������:(OI)(CI)(F)
NT AUTHORITY\�������:(OI)(CI)(F)
BUILTIN\���짮��⥫�:(OI)(CI)(RX)
NT AUTHORITY\��襤訥 �஢���:(OI)(CI)(IO)(M)
NT AUTHORITY\��襤訥 �஢���:(AD)
��易⥫쭠� ��⪠\��᮪�� ��易⥫�� �஢���:(OI)(NP)(IO)(NW)


-------------------------------

�ᯮ�짮�����:

��ᯠ������ ��娢.
�������� 䠩� "SysDrive Permissions Restorer.cmd" �ࠢ�� ������� ��� "�� ����� �����������".
�������� ����� Perm_Log_U.log ᯥ樠�����.

-------------------------------

�ਬ�� ���� � �ᯥ�묨 �����ﬨ:

SystemDrive Folder NTFS privileges restorer script by Alex Dragokas (v.1.0)

Please wait ...

17.04.2017 - 19:24:06,49

Checking requirements
C:\Windows\System32\takeown.exe
C:\Windows\System32\icacls.exe
C:\Windows\System32\find.exe
OS:

Microsoft Windows [Version 6.1.7601]
SystemDrive is: C:
��� ⮬�:
��਩�� ����� ⮬�: 0xa4780dd6
���ᨬ��쭠� ����� ��������⮢: 255
��� 䠩����� ��⥬�: NTFS
�����ন���� ��� ॣ���஢ � ������ 䠩���
���࠭�� ����� 䠩��� � ��⮬ ॣ����
�����ন���� �ᯮ�짮����� ������� � ������ 䠩���
�����ন���� ��易⥫쭮� �ᯮ�짮����� ᯨ᪮� ����㯠 (ACL)
�����ন���� ᦠ⨥ 䠩���
�����ন���� ��᪮�� �����
�����ন���� ࠧ०���� 䠩��
�����ন���� �窨 ����୮� ��ࠡ�⪨
�����ন���� �����䨪���� ��ꥪ⮢
�����ন���� ��஢���� �� �஢�� 䠩����� ��⥬� (EFS)
�����ন���� ���������� ��⮪�
�����প� �࠭���権
�����ন���� ���⪨� ��뫪�
�����ন���� ���७�� ��ਡ���
�����ন���� ����⨥ �� �����䨪���� 䠩��
�����ন���� ��ୠ� USN

Backup
C:\ BUILTIN\������������:(F)
BUILTIN\������������:(OI)(CI)(IO)(F)
NT AUTHORITY\��⥬�:(F)
NT AUTHORITY\��⥬�:(OI)(CI)(IO)(F)
BUILTIN\���짮��⥫�:(OI)(CI)(RX)
NT AUTHORITY\��襤訥 �஢���:(OI)(CI)(IO)(M)
NT AUTHORITY\��襤訥 �஢���:(AD)
��易⥫쭠� ��⪠\��᮪�� ��易⥫�� �஢���:(OI)(NP)(IO)(NW)
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���
ACL backup stored in: "C:\Users\tfcor\Desktop\SysDrive.acl"

Changing owner

�ᯥ�. �������楬 䠩�� (��� �����) "C:\" ���� ��㯯� ����������஢.

Removing 'deny' privileges

>>> icacls C:\ /remove:d "BUILTIN\������������"
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /remove:d "BUILTIN\������������"
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /remove:d "NT AUTHORITY\��⥬�"
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /remove:d "NT AUTHORITY\��⥬�"
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /remove:d "BUILTIN\���짮��⥫�"
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /remove:d "NT AUTHORITY\��襤訥 �஢���"
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /remove:d "NT AUTHORITY\��襤訥 �஢���"
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /remove:d "��易⥫쭠� ��⪠\��᮪�� ��易⥫�� �஢���"
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /remove:d "譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���"
�ᯥ譮 ��ࠡ�⠭� 0 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

Restoring privileges
Applying Window 7 template...

>>> icacls C:\ /grant:r *S-1-5-32-544:(F)
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /grant:r *S-1-5-32-544:(OI)(CI)(IO)(F)
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /grant:r *S-1-5-18:(F)
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /grant:r *S-1-5-18:(OI)(CI)(IO)(F)
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /grant:r *S-1-5-32-545:(OI)(CI)(RX)
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /grant:r *S-1-5-11:(OI)(CI)(IO)(M)
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

>>> icacls C:\ /grant:r *S-1-5-11:(AD)
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

Setting integrity level

>>> icacls C:\ /setintegritylevel (OI)(IO)(NP)H
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

Restoring owner

>>> icacls C:\ /setowner *S-1-5-80-956008885-3418522649-1831038044-1853292631-2271478464
��ࠡ�⠭�� 䠩�: C:\
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

List of new permissions
C:\ BUILTIN\������������:(F)
BUILTIN\������������:(OI)(CI)(IO)(F)
NT AUTHORITY\��⥬�:(F)
NT AUTHORITY\��⥬�:(OI)(CI)(IO)(F)
BUILTIN\���짮��⥫�:(OI)(CI)(RX)
NT AUTHORITY\��襤訥 �஢���:(OI)(CI)(IO)(M)
NT AUTHORITY\��襤訥 �஢���:(AD)
��易⥫쭠� ��⪠\��᮪�� ��易⥫�� �஢���:(OI)(NP)(IO)(NW)
�ᯥ譮 ��ࠡ�⠭� 1 䠩���; �� 㤠���� ��ࠡ���� 0 䠩���

LogFile stored in: "C:\Users\tfcor\Desktop\Perm_Log_U.log"

Script is finished.
Show this logfile to helper.

����� �ਯ� �����襭�.
������� ��� ����� ᯥ樠�����.

------------------------------


������⨬����:
Windows 10 / 8.1 / 8 / 7 / Vista

�ਬ�砭��:
��ਯ� �� 㤠��� ࠧ���騥 �ਢ������. �᫨ � ��� ��⠭������ ��譨� �ਢ������ ࠧ�襭�� ����㯠, ��� �ਤ���� 㤠���� �� ᠬ����⥫쭮.


