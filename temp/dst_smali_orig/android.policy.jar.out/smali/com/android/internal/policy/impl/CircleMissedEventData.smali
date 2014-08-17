.class public Lcom/android/internal/policy/impl/CircleMissedEventData;
.super Ljava/lang/Object;
.source "CircleMissedEventData.java"


# instance fields
.field private mContent:Ljava/lang/String;

.field private mDate:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "name"
    .parameter "content"
    .parameter "date"

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventData;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventData;->mContent:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventData;->mDate:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventData;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/policy/impl/CircleMissedEventData;->mContent:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/internal/policy/impl/CircleMissedEventData;->mDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContact()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventData;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventData;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getDate()Ljava/lang/String;
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/internal/policy/impl/CircleMissedEventData;->mDate:Ljava/lang/String;

    return-object v0
.end method

.method public setContact(Ljava/lang/String;)V
    .locals 0
    .parameter "contact"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventData;->mName:Ljava/lang/String;

    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0
    .parameter "content"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventData;->mContent:Ljava/lang/String;

    return-void
.end method

.method public setDate(Ljava/lang/String;)V
    .locals 0
    .parameter "date"

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/CircleMissedEventData;->mDate:Ljava/lang/String;

    return-void
.end method
