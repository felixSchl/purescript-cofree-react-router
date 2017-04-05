module React.Router.Class where

import Data.NonEmpty (NonEmpty)
import Data.Lens (Lens')

-- | The `RoutePropsClass` type class let one extend the properties passed to
-- | each `RouteClass` react class component.  There is one instance
-- | `RouteProps` defined in the `React.Router.Type` module.
-- | The `mkProps` member function receives the name of the route and an
-- | nonempty array of args read from the url.  You can use
-- | `React.Router.Utils.last` function to get the last element of the array
-- | with arguments obtained from the corrsponding url part.
class RoutePropsClass props where
  idLens :: forall args. Lens' (props args) String
  mkProps :: forall args. String -> NonEmpty Array args -> props args
