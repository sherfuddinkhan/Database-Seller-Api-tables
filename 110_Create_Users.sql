CREATE TABLE [dbo].[Users](
	[UserId] [int] IDENTITY(1,1) NOT NULL,
	[SellerId] [int] NOT NULL,
	[FullName] [nvarchar](200) NOT NULL,
	[UserName] [nvarchar](100) NOT NULL,
	[Email] [nvarchar](150) NULL,
	[PasswordHash] [nvarchar](500) NULL,
	[Mobile] [nvarchar](20) NULL,
	[Role] [nvarchar](50) NULL,
	[IsActive] [bit] NULL,
	[EmailVerified] [bit] NULL,
	[MobileVerified] [bit] NULL,
	[LastLoginDate] [datetime] NULL,
	[FailedLoginAttempts] [int] NULL,
	[IsLocked] [bit] NULL,
	[PasswordResetToken] [nvarchar](200) NULL,
	[PasswordResetExpiry] [datetime] NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedDate] [datetime] NULL,
	[CustomerId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
