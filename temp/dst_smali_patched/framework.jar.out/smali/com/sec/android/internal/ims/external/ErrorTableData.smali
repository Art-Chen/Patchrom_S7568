.class public Lcom/sec/android/internal/ims/external/ErrorTableData;
.super Ljava/lang/Object;
.source "ErrorTableData.java"


# static fields
.field public static final DefaultmErrorCode:Ljava/lang/String; = "Error 2"

.field public static final DefaultmErrorString:Ljava/lang/String; = "Error 3"

.field public static final DefaultmTimestamp:Ljava/lang/String; = "Error 1"


# instance fields
.field public mErrorCode:Ljava/lang/String;

.field public mErrorString:Ljava/lang/String;

.field public mTimestamp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/sec/android/internal/ims/external/ErrorTableData;->settoDefaultValues()V

    return-void
.end method


# virtual methods
.method public fillErrorData(Landroid/content/ContentResolver;)V
    .locals 3
    .parameter "r1"

    .prologue
    new-instance v0, Lcom/sec/android/internal/ims/external/ErrorTableData;

    invoke-direct {v0}, Lcom/sec/android/internal/ims/external/ErrorTableData;-><init>()V

    .local v0, errData:Lcom/sec/android/internal/ims/external/ErrorTableData;
    new-instance v1, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;

    invoke-direct {v1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;-><init>()V

    .local v1, errDataOp:Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;
    const-string v2, "201"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    const-string v2, "10:45"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    const-string v2, "Always On Off"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    const-string v2, "202"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    const-string v2, "10:45"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    const-string v2, "Register failure resp.202"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    const-string v2, "205"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    const-string v2, "10:45"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    const-string v2, "EVDO not available while registering"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    const-string v2, "301"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    const-string v2, "10:45"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    const-string v2, "Media RTP timer timeout"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    const-string v2, "304"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    const-string v2, "10:45"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    const-string v2, "User Cancelled call"

    iput-object v2, v0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    invoke-virtual {v1, v0, p1}, Lcom/sec/android/internal/ims/external/ErrorTableDataOperation;->insertDataIntoDB(Lcom/sec/android/internal/ims/external/ErrorTableData;Landroid/content/ContentResolver;)Landroid/net/Uri;

    return-void
.end method

.method public settoDefaultValues()V
    .locals 1

    .prologue
    const-string v0, "Error 1"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mTimestamp:Ljava/lang/String;

    const-string v0, "Error 2"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorCode:Ljava/lang/String;

    const-string v0, "Error 3"

    iput-object v0, p0, Lcom/sec/android/internal/ims/external/ErrorTableData;->mErrorString:Ljava/lang/String;

    return-void
.end method
