.class public Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;
.super Ljava/lang/Object;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerStockData"
.end annotation


# instance fields
.field private mStockChange:Ljava/lang/String;

.field private mStockChangeRate:Ljava/lang/String;

.field private mStockName:Ljava/lang/String;

.field private mStockPrice:Ljava/lang/String;

.field private mStockUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChangeRate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "name"
    .parameter "price"
    .parameter "change"
    .parameter "change_rate"
    .parameter "url"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChangeRate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChangeRate:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getStockChange()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    return-object v0
.end method

.method public getStockChangeRate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChangeRate:Ljava/lang/String;

    return-object v0
.end method

.method public getStockName()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    return-object v0
.end method

.method public getStockPrice()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getStockUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setStockChange(Ljava/lang/String;)V
    .locals 0
    .parameter "change"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    return-void
.end method

.method public setStockChangeRate(Ljava/lang/String;)V
    .locals 0
    .parameter "change_rate"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockChange:Ljava/lang/String;

    return-void
.end method

.method public setStockName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockName:Ljava/lang/String;

    return-void
.end method

.method public setStockPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockPrice:Ljava/lang/String;

    return-void
.end method

.method public setStockUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerStockData;->mStockUrl:Ljava/lang/String;

    return-void
.end method
