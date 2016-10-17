package ${packageName};

import com.hannesdorfmann.mosby.mvp.MvpPresenter;
import com.hannesdorfmann.mosby.mvp.MvpView;

public interface Mvp${mvpModuleName} {
    interface View extends MvpView {
    }

    interface Presenter extends MvpPresenter<View> {
    }

    interface Interactor {
    }

    interface Router {
    }
}
