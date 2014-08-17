.class public Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;
.super Ljava/lang/Object;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerNewsData"
.end annotation


# instance fields
.field private mAttribute:Ljava/lang/String;

.field private mNews_url:Ljava/lang/String;

.field private mPublish_time:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;)V
    .locals 1
    .parameter

    .prologue
    .line 554
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 550
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 551
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 552
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 555
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "attribute"
    .parameter "publish_time"
    .parameter "news_url"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 549
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 550
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 551
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 552
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 558
    iput-object p2, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 559
    iput-object p3, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 560
    iput-object p4, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 561
    iput-object p5, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 562
    return-void
.end method


# virtual methods
.method public getNewsAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 577
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    return-object v0
.end method

.method public setNewsAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 585
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    .line 586
    return-void
.end method

.method public setNewsTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 581
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    .line 582
    return-void
.end method

.method public setNewsUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "news_url"

    .prologue
    .line 593
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    .line 594
    return-void
.end method

.method public setPublishedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "publish_time"

    .prologue
    .line 589
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    .line 590
    return-void
.end method
