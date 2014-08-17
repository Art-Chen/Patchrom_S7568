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
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->this$0:Lcom/android/internal/policy/impl/TickerScrollView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFacebookAttribute()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookPostID()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    return-object v0
.end method

.method public getFacebookTitle()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPublishedTime()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    return-object v0
.end method

.method public setFacebookAttribute(Ljava/lang/String;)V
    .locals 0
    .parameter "attribute"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mAttribute:Ljava/lang/String;

    return-void
.end method

.method public setFacebookPostID(Ljava/lang/String;)V
    .locals 0
    .parameter "facebook_postid"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mFacebook_postid:Ljava/lang/String;

    return-void
.end method

.method public setFacebookTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setPublishedTime(Ljava/lang/String;)V
    .locals 0
    .parameter "publish_time"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/TickerScrollView$TickerFacebookData;->mPublish_time:Ljava/lang/String;

    return-void
.end method
