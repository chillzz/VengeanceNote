.class public Lcom/android/internal/widget/MiuiTabLayout;
.super Landroid/widget/LinearLayout;
.source "MiuiTabLayout.java"


# instance fields
.field private final mMIUITheme:Z

.field private mTabBackgroundId:I

.field private mTabBackgroundIdLeft:I

.field private mTabBackgroundIdRight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    const/4 v3, 0x0

    new-array v4, v1, [I

    const v5, 0x10100d4

    aput v5, v4, v2

    const v5, 0x10102f3

    invoke-virtual {p1, v3, v4, v5, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 28
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    .line 29
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 31
    iget v3, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    const v4, 0x60201c5

    invoke-static {p1, v4}, Lmiui/util/ResourceMapper;->resolveReference(Landroid/content/Context;I)I

    move-result v4

    if-ne v3, v4, :cond_0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mMIUITheme:Z

    .line 32
    const v1, 0x60200f1

    const v2, 0x60200f2

    const v3, 0x60200f3

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/widget/MiuiTabLayout;->changeBackgroundRes(III)Z

    .line 35
    return-void

    :cond_0
    move v1, v2

    .line 31
    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 52
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 54
    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    if-nez v1, :cond_1

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    invoke-virtual {p1, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 57
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiTabLayout;->getChildCount()I

    move-result v0

    .line 58
    .local v0, count:I
    if-le v0, v3, :cond_0

    .line 59
    if-nez p2, :cond_3

    .line 60
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdLeft:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 61
    invoke-virtual {p0, v3}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-le v0, v4, :cond_2

    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdRight:I

    goto :goto_1

    .line 63
    :cond_3
    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    add-int/lit8 v1, v0, -0x1

    if-ne p2, v1, :cond_0

    .line 64
    :cond_4
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdRight:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 65
    add-int/lit8 v1, v0, -0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-le v0, v4, :cond_5

    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_5
    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdLeft:I

    goto :goto_2
.end method

.method public changeBackgroundRes(III)Z
    .locals 1
    .parameter "middle"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/android/internal/widget/MiuiTabLayout;->mMIUITheme:Z

    if-eqz v0, :cond_0

    .line 39
    iput p1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    .line 40
    iput p2, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdLeft:I

    .line 41
    iput p3, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdRight:I

    .line 42
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MiuiTabLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    const/4 v0, 0x1

    .line 47
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeViewAt(I)V
    .locals 3
    .parameter "index"

    .prologue
    const/4 v2, 0x0

    .line 72
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/widget/MiuiTabLayout;->getChildCount()I

    move-result v0

    .line 75
    .local v0, count:I
    iget v1, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 77
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 78
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 80
    :cond_2
    if-nez p1, :cond_3

    .line 81
    invoke-virtual {p0, v2}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdLeft:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 83
    :cond_3
    if-ne p1, v0, :cond_0

    .line 84
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/widget/MiuiTabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/widget/MiuiTabLayout;->mTabBackgroundIdRight:I

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0
.end method
