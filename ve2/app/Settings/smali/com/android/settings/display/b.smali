.class Lcom/android/settings/display/b;
.super Landroid/database/ContentObserver;
.source "BrightnessActivity.java"


# instance fields
.field final synthetic bx:Lcom/android/settings/display/BrightnessActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/display/BrightnessActivity;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/settings/display/b;->bx:Lcom/android/settings/display/BrightnessActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/settings/display/b;->bx:Lcom/android/settings/display/BrightnessActivity;

    invoke-static {v0}, Lcom/android/settings/display/BrightnessActivity;->a(Lcom/android/settings/display/BrightnessActivity;)V

    .line 47
    return-void
.end method
