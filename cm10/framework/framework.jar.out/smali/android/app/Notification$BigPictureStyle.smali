.class public Landroid/app/Notification$BigPictureStyle;
.super Landroid/app/Notification$Style;
.source "Notification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BigPictureStyle"
.end annotation


# instance fields
.field private mBigLargeIcon:Landroid/graphics/Bitmap;

.field private mBigLargeIconSet:Z

.field private mPicture:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1719
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 1717
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 1720
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification$Builder;)V
    .locals 1
    .parameter "builder"

    .prologue
    .line 1722
    invoke-direct {p0}, Landroid/app/Notification$Style;-><init>()V

    .line 1717
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 1723
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->setBuilder(Landroid/app/Notification$Builder;)V

    .line 1724
    return-void
.end method

.method private makeBigContentView()Landroid/widget/RemoteViews;
    .locals 3

    .prologue
    .line 1758
    const v1, 0x1090073

    invoke-virtual {p0, v1}, Landroid/app/Notification$BigPictureStyle;->getStandardView(I)Landroid/widget/RemoteViews;

    move-result-object v0

    .line 1760
    .local v0, contentView:Landroid/widget/RemoteViews;
    const v1, 0x1020300

    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    .line 1762
    return-object v0
.end method


# virtual methods
.method public bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 1
    .parameter "b"

    .prologue
    .line 1752
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    .line 1753
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    .line 1754
    return-object p0
.end method

.method public bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;
    .locals 0
    .parameter "b"

    .prologue
    .line 1744
    iput-object p1, p0, Landroid/app/Notification$BigPictureStyle;->mPicture:Landroid/graphics/Bitmap;

    .line 1745
    return-object p0
.end method

.method public build()Landroid/app/Notification;
    .locals 3

    .prologue
    .line 1767
    invoke-virtual {p0}, Landroid/app/Notification$BigPictureStyle;->checkBuilder()V

    .line 1768
    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    #calls: Landroid/app/Notification$Builder;->buildUnstyled()Landroid/app/Notification;
    invoke-static {v1}, Landroid/app/Notification$Builder;->access$500(Landroid/app/Notification$Builder;)Landroid/app/Notification;

    move-result-object v0

    .line 1769
    .local v0, wip:Landroid/app/Notification;
    iget-boolean v1, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIconSet:Z

    if-eqz v1, :cond_0

    .line 1770
    iget-object v1, p0, Landroid/app/Notification$BigPictureStyle;->mBuilder:Landroid/app/Notification$Builder;

    iget-object v2, p0, Landroid/app/Notification$BigPictureStyle;->mBigLargeIcon:Landroid/graphics/Bitmap;

    #setter for: Landroid/app/Notification$Builder;->mLargeIcon:Landroid/graphics/Bitmap;
    invoke-static {v1, v2}, Landroid/app/Notification$Builder;->access$602(Landroid/app/Notification$Builder;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 1772
    :cond_0
    invoke-direct {p0}, Landroid/app/Notification$BigPictureStyle;->makeBigContentView()Landroid/widget/RemoteViews;

    move-result-object v1

    iput-object v1, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 1773
    return-object v0
.end method

.method public setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 0
    .parameter "title"

    .prologue
    .line 1731
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->internalSetBigContentTitle(Ljava/lang/CharSequence;)V

    .line 1732
    return-object p0
.end method

.method public setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;
    .locals 0
    .parameter "cs"

    .prologue
    .line 1739
    invoke-virtual {p0, p1}, Landroid/app/Notification$BigPictureStyle;->internalSetSummaryText(Ljava/lang/CharSequence;)V

    .line 1740
    return-object p0
.end method
