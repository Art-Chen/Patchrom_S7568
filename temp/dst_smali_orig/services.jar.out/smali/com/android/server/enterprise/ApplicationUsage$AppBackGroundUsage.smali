.class Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;
.super Ljava/lang/Object;
.source "ApplicationUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/ApplicationUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBackGroundUsage"
.end annotation


# instance fields
.field appLastServiceStartTime:J

.field appLastServiceStopTime:J

.field final synthetic this$0:Lcom/android/server/enterprise/ApplicationUsage;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/ApplicationUsage;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;->this$0:Lcom/android/server/enterprise/ApplicationUsage;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;->appLastServiceStartTime:J

    iput-wide v0, p0, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;->appLastServiceStopTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/ApplicationUsage;Lcom/android/server/enterprise/ApplicationUsage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/ApplicationUsage$AppBackGroundUsage;-><init>(Lcom/android/server/enterprise/ApplicationUsage;)V

    return-void
.end method
