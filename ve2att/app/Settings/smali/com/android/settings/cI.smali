.class public abstract Lcom/android/settings/cI;
.super Ljava/lang/Object;
.source "BaseEnabler.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field protected cW:Lmiui/widget/SlidingButton;

.field protected mActivity:Landroid/app/Activity;

.field protected mObserver:Landroid/database/ContentObserver;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lmiui/widget/SlidingButton;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Lcom/android/settings/q;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/q;-><init>(Lcom/android/settings/cI;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/cI;->mObserver:Landroid/database/ContentObserver;

    .line 24
    iput-object p1, p0, Lcom/android/settings/cI;->mActivity:Landroid/app/Activity;

    .line 25
    iput-object p2, p0, Lcom/android/settings/cI;->cW:Lmiui/widget/SlidingButton;

    .line 26
    return-void
.end method


# virtual methods
.method public a(Lmiui/widget/SlidingButton;)V
    .locals 2
    .parameter

    .prologue
    .line 43
    iget-object v0, p0, Lcom/android/settings/cI;->cW:Lmiui/widget/SlidingButton;

    if-ne v0, p1, :cond_0

    .line 48
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/android/settings/cI;->cW:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 45
    iput-object p1, p0, Lcom/android/settings/cI;->cW:Lmiui/widget/SlidingButton;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/cI;->update()V

    .line 47
    iget-object v0, p0, Lcom/android/settings/cI;->cW:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method protected abstract getUri()Landroid/net/Uri;
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 55
    return-void
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/settings/cI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/cI;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 39
    iget-object v0, p0, Lcom/android/settings/cI;->cW:Lmiui/widget/SlidingButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 40
    return-void
.end method

.method public resume()V
    .locals 4

    .prologue
    .line 29
    invoke-virtual {p0}, Lcom/android/settings/cI;->update()V

    .line 30
    iget-object v0, p0, Lcom/android/settings/cI;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/cI;->getUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/cI;->mObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 34
    iget-object v0, p0, Lcom/android/settings/cI;->cW:Lmiui/widget/SlidingButton;

    invoke-virtual {v0, p0}, Lmiui/widget/SlidingButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 35
    return-void
.end method

.method protected abstract update()V
.end method
