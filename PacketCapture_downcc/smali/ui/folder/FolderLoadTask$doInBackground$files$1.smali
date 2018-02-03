.class final Lui/folder/FolderLoadTask$doInBackground$files$1;
.super Ljava/lang/Object;
.source "FolderLoadTask.kt"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/folder/FolderLoadTask;->doInBackground([Ljava/io/File;)[Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lui/folder/FolderLoadTask$doInBackground$files$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lui/folder/FolderLoadTask$doInBackground$files$1;

    invoke-direct {v0}, Lui/folder/FolderLoadTask$doInBackground$files$1;-><init>()V

    sput-object v0, Lui/folder/FolderLoadTask$doInBackground$files$1;->INSTANCE:Lui/folder/FolderLoadTask$doInBackground$files$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1
    .param p1, "f"    # Ljava/io/File;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 13
    const/4 v0, 0x1

    return v0
.end method
