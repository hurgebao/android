.class public final Lui/WalkThrough3Fragment$CertGenerateTask;
.super Landroid/os/AsyncTask;
.source "WalkThroughActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/WalkThrough3Fragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CertGenerateTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lapp/ssldecryptor/CertKeyStore;",
        ">;"
    }
.end annotation


# instance fields
.field private final activity:Landroid/app/Activity;

.field final synthetic this$0:Lui/WalkThrough3Fragment;


# direct methods
.method public constructor <init>(Lui/WalkThrough3Fragment;Landroid/app/Activity;)V
    .locals 1
    .param p1, "$outer"    # Lui/WalkThrough3Fragment;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 127
    iput-object p1, p0, Lui/WalkThrough3Fragment$CertGenerateTask;->this$0:Lui/WalkThrough3Fragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lui/WalkThrough3Fragment$CertGenerateTask;->activity:Landroid/app/Activity;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lapp/ssldecryptor/CertKeyStore;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const-string v1, "params"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    sget-object v1, Lapp/ssldecryptor/CACertGenerator;->INSTANCE:Lapp/ssldecryptor/CACertGenerator;

    iget-object v2, p0, Lui/WalkThrough3Fragment$CertGenerateTask;->activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "activity.getApplicationContext()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lapp/ssldecryptor/CACertGenerator;->generateFsCertStore(Landroid/content/Context;)Lapp/ssldecryptor/CertKeyStore;

    move-result-object v0

    .line 131
    .local v0, "cert":Lapp/ssldecryptor/CertKeyStore;
    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 127
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lui/WalkThrough3Fragment$CertGenerateTask;->doInBackground([Ljava/lang/Void;)Lapp/ssldecryptor/CertKeyStore;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lapp/ssldecryptor/CertKeyStore;)V
    .locals 1
    .param p1, "result"    # Lapp/ssldecryptor/CertKeyStore;

    .prologue
    .line 135
    iget-object v0, p0, Lui/WalkThrough3Fragment$CertGenerateTask;->activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 136
    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 127
    check-cast p1, Lapp/ssldecryptor/CertKeyStore;

    invoke-virtual {p0, p1}, Lui/WalkThrough3Fragment$CertGenerateTask;->onPostExecute(Lapp/ssldecryptor/CertKeyStore;)V

    return-void
.end method
