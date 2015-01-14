/*
Navicat SQL Server Data Transfer

Source Server         : 192.168.0.99
Source Server Version : 100000
Source Host           : 192.168.0.99:1433
Source Database       : checklist
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 100000
File Encoding         : 65001

Date: 2015-01-14 17:44:52
*/


-- ----------------------------
-- Table structure for [dbo].[checklist]
-- ----------------------------
DROP TABLE [dbo].[checklist]
GO
CREATE TABLE [dbo].[checklist] (
[checkid] int NOT NULL IDENTITY(1,1) ,
[filename] varchar(500) NULL ,
[persons] varchar(500) NULL ,
[bug] text NULL ,
[remark] varchar(2000) NULL ,
[addtime] int NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[checklist]', RESEED, 11)
GO

-- ----------------------------
-- Records of checklist
-- ----------------------------
SET IDENTITY_INSERT [dbo].[checklist] ON
GO
INSERT INTO [dbo].[checklist] ([checkid], [filename], [persons], [bug], [remark], [addtime]) VALUES (N'3', N'GroupInfoActivity.java', N'刘玉鹏', N'/bug/1420535773.jpg', N'成员变量以m_开头，正确为m_handler', N'1420535773');
GO
INSERT INTO [dbo].[checklist] ([checkid], [filename], [persons], [bug], [remark], [addtime]) VALUES (N'6', N'GroupInfoActivity.java', N'刘玉鹏', N'/bug/1420536322.jpg', N'未做判空处理，GetGroupMemberList返回null时报异常', N'1420536322');
GO
INSERT INTO [dbo].[checklist] ([checkid], [filename], [persons], [bug], [remark], [addtime]) VALUES (N'7', N'GroupInfoActivity.java', N'刘玉鹏', N'/bug/1420595633.jpg', N'对数据包的处理要结合数据包内的数据
如群信息视图，只处理与当前显示的群相关的数据包
要对groupid进行判断，并注意判空处理', N'1420595633');
GO
INSERT INTO [dbo].[checklist] ([checkid], [filename], [persons], [bug], [remark], [addtime]) VALUES (N'8', N'IMCImpl.JAVA', N'韩祥松', N'/bug/1420687304.jpg', N'只有全局性数据才允许往IMCImpl、GroupMgrCImpl等Impl中存放', N'1420687304');
GO
INSERT INTO [dbo].[checklist] ([checkid], [filename], [persons], [bug], [remark], [addtime]) VALUES (N'9', N'contact_friend_user_list.xml', N'刘玉鹏', N'/bug/1420795338.jpg', N'资源文件里禁止写无关内容', N'1420795338');
GO
INSERT INTO [dbo].[checklist] ([checkid], [filename], [persons], [bug], [remark], [addtime]) VALUES (N'11', N'FirstWelcome.java', N'韩祥松', N'/bug/1421071856', N'Caused by: android.content.res.Resources$NotFoundException: File res/drawable-mdpi/welcome4.png from drawable resource ID #0x7f020213
资源图片找不到时，有可能是图片尺寸大小问题，与drawable-hdpi、drawable-ldpi、drawable-mdpi、drawable-xhdpi所对应大小冲突，可以检查一下。
ldpi：240x320
mdpi：320x480
hdpi：480x800、480x854
xhdpi：至少960*720
xxhdpi：1280×720', N'1421071856');
GO
SET IDENTITY_INSERT [dbo].[checklist] OFF
GO

-- ----------------------------
-- Indexes structure for table checklist
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table [dbo].[checklist]
-- ----------------------------
ALTER TABLE [dbo].[checklist] ADD PRIMARY KEY ([checkid])
GO
