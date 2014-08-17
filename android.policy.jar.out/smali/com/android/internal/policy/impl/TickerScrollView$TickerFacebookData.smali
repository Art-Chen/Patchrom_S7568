.class public Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;
.super Ljava/lang/Object;
.source "TickerScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/TickerScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TickerFacebookData"
.end annotation


# instance fields
.field private mAttribute:Ljava/lang/String;

.field private mFacebook_postid:Ljava/lang/String;

.field private mPublish_time:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/TickerScrollView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;)V
    .locals 1
    .parameter

    .prologue
    .line 505
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    .line 501
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    .line 502
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    .line 503
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    .line 506
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/policy/impl/TickerScrollView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "title"
    .parameter "attribute"
    .parameter "publish_time"
    .parameter "facebook_postid"

    .prologue
    .line 508
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 500
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    .line 501
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    .line 502
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    .line 503
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    .line 509
    iput-object p2, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    .line 510
    iput-object p3, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    .line 511
    iput-object p4, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    .line 512
    iput-object p5, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    .line 513
    return-void
.end method


# virtual methods
.method public getFacebookAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookPostID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 524
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    return-object v0
.end method

.method public setFacebookAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "attribute"

    .prologue
    .line 536
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    .line 537
    return-void
.end method

.method public setFacebookPostID(Ljava/lang/String;)V
    .locals 0
    .parameter "facebook_postid"

    .prologue
    .line 544
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public setFacebookTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 532
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    .line 533
    return-void
.end method

.method public setPublishedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "publish_time"

    .prologue
    .line 540
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    .line 541
    return-void
.end method
