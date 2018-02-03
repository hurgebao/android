# Generated keep rule for Lifecycle observer adapter.
-keep class android.arch.lifecycle.LiveData_LifecycleBoundObserver_LifecycleAdapter {
   ifused class android.arch.lifecycle.LiveData.LifecycleBoundObserver {
       <init>(...);
   };
}
