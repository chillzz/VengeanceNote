.class abstract Lcom/android/settings/widget/e;
.super Ljava/lang/Object;
.source "SettingsAppWidgetProvider.java"


# instance fields
.field private nA:Ljava/lang/Boolean;

.field private nB:Z

.field private ny:Z

.field private nz:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 124
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean v0, p0, Lcom/android/settings/widget/e;->ny:Z

    .line 127
    iput-object v1, p0, Lcom/android/settings/widget/e;->nz:Ljava/lang/Boolean;

    .line 128
    iput-object v1, p0, Lcom/android/settings/widget/e;->nA:Ljava/lang/Boolean;

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/widget/e;->nB:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/l;)V
    .locals 0
    .parameter

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/settings/widget/e;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract F()I
.end method

.method public abstract G()I
.end method

.method protected final a(Landroid/content/Context;I)V
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 241
    iget-boolean v0, p0, Lcom/android/settings/widget/e;->ny:Z

    .line 242
    packed-switch p2, :pswitch_data_0

    .line 261
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/widget/e;->ny:Z

    if-nez v0, :cond_1

    .line 262
    iget-boolean v0, p0, Lcom/android/settings/widget/e;->nB:Z

    if-eqz v0, :cond_1

    .line 263
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "processing deferred state change"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-object v0, p0, Lcom/android/settings/widget/e;->nz:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/e;->nA:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/e;->nA:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/settings/widget/e;->nz:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 266
    const-string v0, "SettingsAppWidgetProvider"

    const-string v1, "... but intended state matches, so no changes."

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_0
    :goto_1
    iput-boolean v2, p0, Lcom/android/settings/widget/e;->nB:Z

    .line 274
    :cond_1
    return-void

    .line 244
    :pswitch_0
    iput-boolean v2, p0, Lcom/android/settings/widget/e;->ny:Z

    .line 245
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/e;->nz:Ljava/lang/Boolean;

    goto :goto_0

    .line 248
    :pswitch_1
    iput-boolean v2, p0, Lcom/android/settings/widget/e;->ny:Z

    .line 249
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/e;->nz:Ljava/lang/Boolean;

    goto :goto_0

    .line 252
    :pswitch_2
    iput-boolean v3, p0, Lcom/android/settings/widget/e;->ny:Z

    .line 253
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/e;->nz:Ljava/lang/Boolean;

    goto :goto_0

    .line 256
    :pswitch_3
    iput-boolean v3, p0, Lcom/android/settings/widget/e;->ny:Z

    .line 257
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/e;->nz:Ljava/lang/Boolean;

    goto :goto_0

    .line 267
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/e;->nA:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 268
    iput-boolean v3, p0, Lcom/android/settings/widget/e;->ny:Z

    .line 269
    iget-object v0, p0, Lcom/android/settings/widget/e;->nA:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/e;->a(Landroid/content/Context;Z)V

    goto :goto_1

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public abstract a(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method public final a(Landroid/content/Context;Landroid/widget/RemoteViews;)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/widget/e;->F()I

    move-result v0

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/widget/e;->G()I

    move-result v1

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/widget/e;->getPosition()I

    move-result v2

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/e;->s(Landroid/content/Context;)I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 227
    :goto_0
    :pswitch_0
    return-void

    .line 201
    :pswitch_1
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/e;->b(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 202
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->dS()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 206
    :pswitch_2
    invoke-virtual {p0, v5}, Lcom/android/settings/widget/e;->b(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 207
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->dT()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 216
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/widget/e;->dr()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 217
    invoke-virtual {p0, v5}, Lcom/android/settings/widget/e;->b(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 218
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->dU()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 221
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/e;->b(Z)I

    move-result v3

    invoke-virtual {p2, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 222
    invoke-static {}, Lcom/android/settings/widget/SettingsAppWidgetProvider;->dS()[I

    move-result-object v0

    aget v0, v0, v2

    invoke-virtual {p2, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 199
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method protected abstract a(Landroid/content/Context;Z)V
.end method

.method public abstract b(Z)I
.end method

.method public abstract c(Landroid/content/Context;)I
.end method

.method public final dr()Z
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/settings/widget/e;->nA:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/e;->nA:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public final r(Landroid/content/Context;)V
    .locals 3
    .parameter

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/e;->s(Landroid/content/Context;)I

    move-result v2

    .line 144
    packed-switch v2, :pswitch_data_0

    .line 157
    :cond_0
    :goto_0
    :pswitch_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/widget/e;->nA:Ljava/lang/Boolean;

    .line 158
    iget-boolean v2, p0, Lcom/android/settings/widget/e;->ny:Z

    if-eqz v2, :cond_1

    .line 163
    iput-boolean v1, p0, Lcom/android/settings/widget/e;->nB:Z

    .line 168
    :goto_1
    return-void

    :pswitch_1
    move v0, v1

    .line 150
    goto :goto_0

    .line 152
    :pswitch_2
    iget-object v2, p0, Lcom/android/settings/widget/e;->nA:Ljava/lang/Boolean;

    if-eqz v2, :cond_0

    .line 153
    iget-object v2, p0, Lcom/android/settings/widget/e;->nA:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 165
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/widget/e;->ny:Z

    .line 166
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/widget/e;->a(Landroid/content/Context;Z)V

    goto :goto_1

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final s(Landroid/content/Context;)I
    .locals 2
    .parameter

    .prologue
    const/4 v0, 0x5

    .line 292
    iget-boolean v1, p0, Lcom/android/settings/widget/e;->ny:Z

    if-eqz v1, :cond_0

    .line 308
    :goto_0
    return v0

    .line 302
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/widget/e;->c(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 304
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 306
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
