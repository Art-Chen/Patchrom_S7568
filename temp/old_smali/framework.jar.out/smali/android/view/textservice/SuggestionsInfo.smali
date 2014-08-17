.class public final Landroid/view/textservice/SuggestionsInfo;
.super Ljava/lang/Object;
.source "SuggestionsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/textservice/SuggestionsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:[Ljava/lang/String; = null

.field public static final RESULT_ATTR_HAS_RECOMMENDED_SUGGESTIONS:I = 0x4

.field public static final RESULT_ATTR_IN_THE_DICTIONARY:I = 0x1

.field public static final RESULT_ATTR_LOOKS_LIKE_TYPO:I = 0x2


# instance fields
.field private mCookie:I

.field private mSequence:I

.field private final mSuggestions:[Ljava/lang/String;

.field private final mSuggestionsAttributes:I

.field private final mSuggestionsAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-class v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    sput-object v0, Landroid/view/textservice/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    new-instance v0, Landroid/view/textservice/SuggestionsInfo$1;

    invoke-direct {v0}, Landroid/view/textservice/SuggestionsInfo$1;-><init>()V

    sput-object v0, Landroid/view/textservice/SuggestionsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I[Ljava/lang/String;)V
    .locals 2
    .parameter "suggestionsAttributes"
    .parameter "suggestions"

    .prologue
    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    if-nez p2, :cond_0

    sget-object v0, Landroid/view/textservice/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    iput-boolean v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    :goto_0
    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    return-void

    :cond_0
    iput-object p2, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    goto :goto_0
.end method

.method public constructor <init>(I[Ljava/lang/String;II)V
    .locals 1
    .parameter "suggestionsAttributes"
    .parameter "suggestions"
    .parameter "cookie"
    .parameter "sequence"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    sget-object v0, Landroid/view/textservice/SuggestionsInfo;->EMPTY:[Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    :goto_0
    iput p1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    iput p3, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    iput p4, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    return-void

    :cond_0
    iput-object p2, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    goto :goto_0
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "source"

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readStringArray()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    iput-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCookie()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    return v0
.end method

.method public getSequence()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    return v0
.end method

.method public getSuggestionAt(I)Ljava/lang/String;
    .locals 1
    .parameter "i"

    .prologue
    iget-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getSuggestionsAttributes()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    return v0
.end method

.method public getSuggestionsCount()I
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public setCookieAndSequence(II)V
    .locals 0
    .parameter "cookie"
    .parameter "sequence"

    .prologue
    iput p1, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    iput p2, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAttributes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestions:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mCookie:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSequence:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Landroid/view/textservice/SuggestionsInfo;->mSuggestionsAvailable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
