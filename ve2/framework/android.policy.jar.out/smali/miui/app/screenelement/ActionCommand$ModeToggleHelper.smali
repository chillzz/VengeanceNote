.class Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;
.super Ljava/lang/Object;
.source "ActionCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/ActionCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ModeToggleHelper"
.end annotation


# instance fields
.field private mCurModeIndex:I

.field private mCurToggleIndex:I

.field private mModeIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mModeNames:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToggle:Z

.field private mToggleAll:Z

.field private mToggleModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/screenelement/ActionCommand$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;-><init>()V

    return-void
.end method

.method private findMode(Ljava/lang/String;)I
    .locals 2
    .parameter "name"

    .prologue
    .line 168
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 169
    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    .end local v0           #i:I
    :goto_1
    return v0

    .line 168
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 172
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public addMode(Ljava/lang/String;I)V
    .locals 2
    .parameter "mode"
    .parameter "id"

    .prologue
    .line 136
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    return-void
.end method

.method public build(Ljava/lang/String;)Z
    .locals 7
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 142
    invoke-direct {p0, p1}, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->findMode(Ljava/lang/String;)I

    move-result v2

    .line 144
    .local v2, index:I
    if-ltz v2, :cond_0

    .line 145
    iput v2, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 164
    :goto_0
    return v4

    .line 149
    :cond_0
    const-string v5, "toggle"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 150
    iput-boolean v4, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mToggleAll:Z

    goto :goto_0

    .line 155
    :cond_1
    const-string v5, ","

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, modes:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_3

    .line 157
    aget-object v5, v3, v0

    invoke-direct {p0, v5}, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->findMode(Ljava/lang/String;)I

    move-result v1

    .line 158
    .local v1, ind:I
    if-gez v1, :cond_2

    .line 159
    const/4 v4, 0x0

    goto :goto_0

    .line 160
    :cond_2
    iget-object v5, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 163
    .end local v1           #ind:I
    :cond_3
    iput-boolean v4, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mToggle:Z

    goto :goto_0
.end method

.method public click()V
    .locals 2

    .prologue
    .line 176
    iget-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mToggle:Z

    if-eqz v0, :cond_1

    .line 177
    iget v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    .line 178
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mToggleModes:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mCurToggleIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 179
    :cond_1
    iget-boolean v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mToggleAll:Z

    if-eqz v0, :cond_0

    .line 180
    iget v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    iget-object v1, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    rem-int/2addr v0, v1

    iput v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    goto :goto_0
.end method

.method public getModeId()I
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mModeIds:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getModeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mModeNames:Ljava/util/ArrayList;

    iget v1, p0, Lmiui/app/screenelement/ActionCommand$ModeToggleHelper;->mCurModeIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
