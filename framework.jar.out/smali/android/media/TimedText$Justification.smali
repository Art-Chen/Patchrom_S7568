.class public Landroid/media/TimedText$Justification;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Justification"
.end annotation


# instance fields
.field public horizontalJustification:I

.field final synthetic this$0:Landroid/media/TimedText;

.field public verticalJustification:I


# direct methods
.method public constructor <init>(Landroid/media/TimedText;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, -0x1

    .line 177
    iput-object p1, p0, Landroid/media/TimedText$Justification;->this$0:Landroid/media/TimedText;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput v0, p0, Landroid/media/TimedText$Justification;->horizontalJustification:I

    .line 175
    iput v0, p0, Landroid/media/TimedText$Justification;->verticalJustification:I

    .line 177
    return-void
.end method
