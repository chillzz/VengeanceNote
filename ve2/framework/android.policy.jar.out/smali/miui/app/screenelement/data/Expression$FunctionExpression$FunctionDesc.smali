.class Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;
.super Ljava/lang/Object;
.source "Expression.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/app/screenelement/data/Expression$FunctionExpression;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FunctionDesc"
.end annotation


# instance fields
.field fun:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

.field params:I


# direct methods
.method public constructor <init>(Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;I)V
    .locals 0
    .parameter "f"
    .parameter "i"

    .prologue
    .line 465
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput-object p1, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;->fun:Lmiui/app/screenelement/data/Expression$FunctionExpression$Fun;

    .line 467
    iput p2, p0, Lmiui/app/screenelement/data/Expression$FunctionExpression$FunctionDesc;->params:I

    .line 468
    return-void
.end method
