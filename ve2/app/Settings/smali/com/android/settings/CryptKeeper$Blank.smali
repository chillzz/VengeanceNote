.class public Lcom/android/settings/CryptKeeper$Blank;
.super Landroid/app/Activity;
.source "CryptKeeper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter

    .prologue
    .line 117
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    const v0, 0x7f04001b

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper$Blank;->setContentView(I)V

    .line 119
    return-void
.end method