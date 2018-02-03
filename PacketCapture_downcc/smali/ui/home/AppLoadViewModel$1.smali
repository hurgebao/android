.class Lui/home/AppLoadViewModel$1;
.super Ljava/lang/Object;
.source "AppLoadViewModel.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/home/AppLoadViewModel;-><init>(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/util/List",
        "<",
        "Landroid/content/pm/ApplicationInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lui/home/AppLoadViewModel;


# direct methods
.method constructor <init>(Lui/home/AppLoadViewModel;)V
    .locals 0
    .param p1, "this$0"    # Lui/home/AppLoadViewModel;

    .prologue
    .line 49
    iput-object p1, p0, Lui/home/AppLoadViewModel$1;->this$0:Lui/home/AppLoadViewModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 49
    invoke-virtual {p0}, Lui/home/AppLoadViewModel$1;->call()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    iget-object v1, p0, Lui/home/AppLoadViewModel$1;->this$0:Lui/home/AppLoadViewModel;

    invoke-static {v1}, Lui/home/AppLoadViewModel;->access$000(Lui/home/AppLoadViewModel;)Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    .line 53
    .local v0, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v1, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;

    iget-object v2, p0, Lui/home/AppLoadViewModel$1;->this$0:Lui/home/AppLoadViewModel;

    invoke-static {v2}, Lui/home/AppLoadViewModel;->access$000(Lui/home/AppLoadViewModel;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/ApplicationInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 54
    return-object v0
.end method
