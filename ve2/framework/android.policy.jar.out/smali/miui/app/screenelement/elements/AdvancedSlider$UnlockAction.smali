.class Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;
.super Ljava/lang/Object;
.source "AdvancedSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/elements/AdvancedSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockAction"
.end annotation


# instance fields
.field public mCommand:Lmiui/app/screenelement/ActionCommand;

.field public mConfigTaskLoaded:Z

.field public mTask:Lmiui/app/screenelement/util/Task;

.field public mTrigger:Lmiui/app/screenelement/CommandTrigger;

.field final synthetic this$0:Lmiui/app/screenelement/elements/AdvancedSlider;


# direct methods
.method private constructor <init>(Lmiui/app/screenelement/elements/AdvancedSlider;)V
    .locals 0
    .parameter

    .prologue
    .line 603
    iput-object p1, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/app/screenelement/elements/AdvancedSlider;Lmiui/app/screenelement/elements/AdvancedSlider$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 603
    invoke-direct {p0, p1}, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;-><init>(Lmiui/app/screenelement/elements/AdvancedSlider;)V

    return-void
.end method

.method private performTask()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 624
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    if-nez v2, :cond_1

    .line 625
    const/4 v1, 0x0

    .line 652
    :cond_0
    :goto_0
    return-object v1

    .line 627
    :cond_1
    const/4 v1, 0x0

    .line 628
    .local v1, intent:Landroid/content/Intent;
    iget-boolean v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mConfigTaskLoaded:Z

    if-nez v2, :cond_3

    .line 629
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->this$0:Lmiui/app/screenelement/elements/AdvancedSlider;

    iget-object v2, v2, Lmiui/app/screenelement/elements/ScreenElement;->mContext:Lmiui/app/screenelement/ScreenContext;

    iget-object v2, v2, Lmiui/app/screenelement/ScreenContext;->mRoot:Lmiui/app/screenelement/ScreenElementRoot;

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v3, v3, Lmiui/app/screenelement/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmiui/app/screenelement/ScreenElementRoot;->findTask(Ljava/lang/String;)Lmiui/app/screenelement/util/Task;

    move-result-object v0

    .line 633
    .local v0, configTask:Lmiui/app/screenelement/util/Task;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 634
    iput-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    .line 636
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mConfigTaskLoaded:Z

    .line 639
    .end local v0           #configTask:Lmiui/app/screenelement/util/Task;
    :cond_3
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 640
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->action:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 641
    .restart local v1       #intent:Landroid/content/Intent;
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->type:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 642
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->type:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 643
    :cond_4
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->category:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 644
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->category:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    :cond_5
    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v2, v2, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 646
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v3, v3, Lmiui/app/screenelement/util/Task;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    iget-object v4, v4, Lmiui/app/screenelement/util/Task;->className:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 648
    :cond_6
    const/high16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto/16 :goto_0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 656
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    if-eqz v0, :cond_0

    .line 657
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->finish()V

    .line 658
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_1

    .line 659
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->finish()V

    .line 660
    :cond_1
    return-void
.end method

.method public init()V
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    if-eqz v0, :cond_0

    .line 664
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->init()V

    .line 665
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_1

    .line 666
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->init()V

    .line 667
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 670
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->pause()V

    .line 672
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_1

    .line 673
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->pause()V

    .line 674
    :cond_1
    return-void
.end method

.method public perform()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 613
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTask:Lmiui/app/screenelement/util/Task;

    if-eqz v0, :cond_0

    .line 614
    invoke-direct {p0}, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->performTask()Landroid/content/Intent;

    move-result-object v0

    .line 620
    :goto_0
    return-object v0

    .line 615
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    if-eqz v0, :cond_2

    .line 616
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->perform()V

    .line 620
    :cond_1
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 617
    :cond_2
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_1

    .line 618
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->perform()V

    goto :goto_1
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    if-eqz v0, :cond_0

    .line 678
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mCommand:Lmiui/app/screenelement/ActionCommand;

    invoke-virtual {v0}, Lmiui/app/screenelement/ActionCommand;->resume()V

    .line 679
    :cond_0
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    if-eqz v0, :cond_1

    .line 680
    iget-object v0, p0, Lmiui/app/screenelement/elements/AdvancedSlider$UnlockAction;->mTrigger:Lmiui/app/screenelement/CommandTrigger;

    invoke-virtual {v0}, Lmiui/app/screenelement/CommandTrigger;->resume()V

    .line 681
    :cond_1
    return-void
.end method
