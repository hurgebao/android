.class public Lui/home/AppsListActivity$ActivityResult;
.super Ljava/lang/Object;
.source "AppsListActivity.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/home/AppsListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActivityResult"
.end annotation


# instance fields
.field public final packageName:Ljava/lang/String;

.field public final uid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lui/home/AppsListActivity$ActivityResult;->packageName:Ljava/lang/String;

    .line 46
    iput p2, p0, Lui/home/AppsListActivity$ActivityResult;->uid:I

    .line 47
    return-void
.end method
