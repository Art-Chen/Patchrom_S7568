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
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getNewsAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsUrl()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedTime()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    return-object v0
.end method

.method public setNewsAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "attribute"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mAttribute:Ljava/lang/String;

    return-void
.end method

.method public setNewsTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setNewsUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "news_url"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mNews_url:Ljava/lang/String;

    return-void
.end method

.method public setPublishedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "publish_time"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerNewsData;->mPublish_time:Ljava/lang/String;

    return-void
.end method
