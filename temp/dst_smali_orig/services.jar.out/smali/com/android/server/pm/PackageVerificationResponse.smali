.class public Lcom/android/server/pm/PackageVerificationResponse;
.super Ljava/lang/Object;
.source "PackageVerificationResponse.java"


# instance fields
.field public final callerUid:I

.field public final code:I


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .parameter "code"
    .parameter "callerUid"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/pm/PackageVerificationResponse;->code:I

    iput p2, p0, Lcom/android/server/pm/PackageVerificationResponse;->callerUid:I

    return-void
.end method
