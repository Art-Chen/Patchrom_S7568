.class public Landroid/media/TimedText$Font;
.super Ljava/lang/Object;
.source "TimedText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/TimedText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Font"
.end annotation


# instance fields
.field public ID:I

.field public name:Ljava/lang/String;

.field final synthetic this$0:Landroid/media/TimedText;


# direct methods
.method public constructor <init>(Landroid/media/TimedText;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Landroid/media/TimedText$Font;->this$0:Landroid/media/TimedText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/media/TimedText$Font;->ID:I

    return-void
.end method
