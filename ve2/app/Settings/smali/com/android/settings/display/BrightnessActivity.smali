.class public Lcom/android/settings/display/BrightnessActivity;
.super Lcom/android/settings/z;
.source "BrightnessActivity.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# instance fields
.field private FB:Landroid/widget/CheckBox;

.field private Kb:I

.field private Kc:I

.field private Kd:Z

.field private Ke:I

.field private Kf:Landroid/database/ContentObserver;

.field private Kg:Landroid/database/ContentObserver;

.field private i:Landroid/widget/SeekBar;

.field private lk:Z

.field private mDialog:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/z;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings/display/b;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/b;-><init>(Lcom/android/settings/display/BrightnessActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kf:Landroid/database/ContentObserver;

    .line 50
    new-instance v0, Lcom/android/settings/display/a;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/a;-><init>(Lcom/android/settings/display/BrightnessActivity;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kg:Landroid/database/ContentObserver;

    .line 223
    return-void
.end method

.method static synthetic a(Lcom/android/settings/display/BrightnessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->jq()V

    return-void
.end method

.method private aP(I)I
    .locals 2
    .parameter

    .prologue
    .line 114
    .line 116
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 120
    :goto_0
    return p1

    .line 118
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private aQ(I)I
    .locals 2
    .parameter

    .prologue
    .line 124
    .line 126
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 130
    :goto_0
    return p1

    .line 128
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private aR(I)V
    .locals 1
    .parameter

    .prologue
    .line 171
    :try_start_0
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    .line 173
    if-eqz v0, :cond_0

    .line 174
    invoke-interface {v0, p1}, Landroid/os/IPowerManager;->setBacklightBrightness(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/display/BrightnessActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->jr()V

    return-void
.end method

.method private bM()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 76
    const v0, 0x7f04004d

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->setContentView(I)V

    .line 77
    const v0, 0x7f0800cb

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->i:Landroid/widget/SeekBar;

    .line 78
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->i:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->Ke:I

    rsub-int v2, v2, 0xff

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 79
    invoke-direct {p0, v1}, Lcom/android/settings/display/BrightnessActivity;->aP(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kb:I

    .line 80
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->i:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->Kb:I

    iget v3, p0, Lcom/android/settings/display/BrightnessActivity;->Ke:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 82
    const v0, 0x7f0800ca

    invoke-virtual {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->FB:Landroid/widget/CheckBox;

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kd:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->FB:Landroid/widget/CheckBox;

    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 85
    invoke-direct {p0, v1}, Lcom/android/settings/display/BrightnessActivity;->aQ(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kc:I

    .line 86
    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->FB:Landroid/widget/CheckBox;

    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kc:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 90
    :goto_1
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->i:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 91
    return-void

    :cond_0
    move v0, v1

    .line 86
    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->FB:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1
.end method

.method private cL()V
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->lk:Z

    if-eqz v0, :cond_0

    .line 167
    :goto_0
    return-void

    .line 160
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kd:Z

    if-eqz v0, :cond_1

    .line 161
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kc:I

    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->setMode(I)V

    .line 163
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kd:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kc:I

    if-nez v0, :cond_3

    .line 164
    :cond_2
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kb:I

    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->aR(I)V

    .line 166
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->lk:Z

    goto :goto_0
.end method

.method private jq()V
    .locals 3

    .prologue
    .line 134
    const/16 v0, 0xff

    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->aP(I)I

    move-result v0

    .line 135
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->i:Landroid/widget/SeekBar;

    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->Ke:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 136
    return-void
.end method

.method private jr()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 139
    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->aQ(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 140
    :cond_0
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->FB:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 141
    return-void
.end method

.method private setMode(I)V
    .locals 2
    .parameter

    .prologue
    const/4 v1, 0x1

    .line 182
    if-ne p1, v1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->i:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 189
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->i:Landroid/widget/SeekBar;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 106
    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->setMode(I)V

    .line 108
    if-nez p2, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->i:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/display/BrightnessActivity;->Ke:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->aR(I)V

    .line 111
    :cond_0
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x1

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/z;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6090007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kd:Z

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x6080005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/BrightnessActivity;->Ke:I

    .line 63
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->bM()V

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->Kf:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->Kg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/display/BrightnessActivity;->lk:Z

    .line 73
    return-void
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 145
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->Kf:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 147
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->Kg:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->i:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget v1, p0, Lcom/android/settings/display/BrightnessActivity;->Ke:I

    add-int/2addr v0, v1

    .line 149
    iget v1, p0, Lcom/android/settings/display/BrightnessActivity;->Kb:I

    if-eq v0, v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 154
    :cond_0
    invoke-super {p0}, Lcom/android/settings/z;->onDestroy()V

    .line 155
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 94
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->Ke:I

    add-int/2addr v0, p2

    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->aR(I)V

    .line 95
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 213
    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 214
    const-string v0, "save_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/settings/display/BrightnessActivity$SavedState;

    .line 215
    iget v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldProgress:I

    iput v1, p0, Lcom/android/settings/display/BrightnessActivity;->Kb:I

    .line 216
    iget-boolean v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldAutomatic:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    iput v1, p0, Lcom/android/settings/display/BrightnessActivity;->Kc:I

    .line 217
    iget-boolean v1, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->automatic:Z

    if-eqz v1, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/settings/display/BrightnessActivity;->setMode(I)V

    .line 218
    iget v0, v0, Lcom/android/settings/display/BrightnessActivity$SavedState;->progress:I

    iget v1, p0, Lcom/android/settings/display/BrightnessActivity;->Ke:I

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/display/BrightnessActivity;->aR(I)V

    .line 220
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/z;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 221
    return-void

    :cond_1
    move v1, v3

    .line 216
    goto :goto_0

    :cond_2
    move v2, v3

    .line 217
    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x1

    .line 194
    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/display/BrightnessActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    new-instance v1, Lcom/android/settings/display/BrightnessActivity$SavedState;

    invoke-direct {v1}, Lcom/android/settings/display/BrightnessActivity$SavedState;-><init>()V

    .line 197
    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->FB:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/android/settings/display/BrightnessActivity$SavedState;->automatic:Z

    .line 198
    iget-object v2, p0, Lcom/android/settings/display/BrightnessActivity;->i:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    iput v2, v1, Lcom/android/settings/display/BrightnessActivity$SavedState;->progress:I

    .line 199
    iget v2, p0, Lcom/android/settings/display/BrightnessActivity;->Kc:I

    if-ne v2, v0, :cond_1

    :goto_0
    iput-boolean v0, v1, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldAutomatic:Z

    .line 200
    iget v0, p0, Lcom/android/settings/display/BrightnessActivity;->Kb:I

    iput v0, v1, Lcom/android/settings/display/BrightnessActivity$SavedState;->oldProgress:I

    .line 201
    const-string v0, "save_state"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 204
    invoke-direct {p0}, Lcom/android/settings/display/BrightnessActivity;->cL()V

    .line 207
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/z;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 208
    return-void

    .line 199
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 99
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter

    .prologue
    .line 103
    return-void
.end method
